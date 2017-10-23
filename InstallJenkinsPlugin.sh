#!/bin/bash
#
#
# Author : Arun Jayabalan
#
#
set -e
declare plugins

if [ $# -eq 0 ]; then
  echo "******************************************"
  echo ""
  echo "Usage: $0 plugin1 "
  echo ""
  echo "******************************************"
  exit 1
fi


host=http://myjenkinsurl:8080

#get Jenkins home $JEKINS_HOME/plugins
plugin_dir=/Users/arun/.jenkins/plugins/
file_owner=arun
#Create the plugin directory if doesnt exist
mkdir -p ${plugin_dir}

######################################################################################################
#
# function : downloadPlugin
# Description : To download the plugin to the jenkisn plugin ndirectory
#
######################################################################################################

downloadPlugin() {
  if [ -f ${plugin_dir}/${1}.hpi -o -f ${plugin_dir}/${1}.jpi ]; then
    echo "Plugin $1  Already installed "
     echo " $1 : --- SKIPPED -- "
    return 0
  else
    echo "Plugin $1 installation in progress ...."
    curl -L --silent --output ${plugin_dir}/${1}.hpi  https://updates.jenkins-ci.org/latest/${1}.hpi
    echo "$1  - has been successfully installed !!!"
    return 0
  fi
}
######################################################################################################
#
# function : installPlugins
# Description : To parse through the .jpi file and invoke the installation  process
#
######################################################################################################
installPlugins() {
    echo "Checking installation status of Plugin  $1"
    downloadPlugin ${1}

    for f in ${plugin_dir}/${1}.jpi ; do
        pluginDependencies=$( unzip -p ${f} META-INF/MANIFEST.MF | grep -e "[a-z-]:[0-9]" | tr -d "\r\n " | sed "s/Plugin-Dependencies://" | tr ',' '\n' | awk -F ':' '{ print $1 }' | tr '\n' ' ' )
        for dep_plugin in $pluginDependencies; do
          echo "Requesting dependency plugin : $dep_plugin "
           installPlugins $dep_plugin
        done
    done
}

######################################################################################################
#
# Main Script - Starts here
#
######################################################################################################
for plugin in $*
    do
        installPlugins "$plugin"
    done


echo "Granting permissions"

chown -R ${file_owner} ${plugin_dir}

## wait 20 sec
#sleep 20
#
## jenkins safe restart
#curl -X POST $host/safeRestart