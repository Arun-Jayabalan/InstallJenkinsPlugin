
Script Name: InstallJenkinsPlugin.sh
             

Description:
------------

Execute the script by passing jenkins plugin id as the parameter.



Prerequisites:
--------------

Change the Jenkins URL to safely restart at the end of the program.

    host=http://myjenkinsurl:8080

As this is optional feature, If we dont want to restart the jenkins , please comment out the last couple line on the script

    # wait 20 sec
    sleep 20
    
    # jenkins safe restart
    curl -X POST $host/safeRestart


Usage
-----
        
             Usage: /Users/guest/projects/platform/Python/InstallJenkinsPlugin.sh plugin1 [plugin ...]

Execution
---------
to install the git plugin 

Execute:

InstallJenkinsPlugin.sh plugin1

for maven

GetRepoLastUpdatedReport.py  maven-plugin


----------------------

Sample Output for Error handling for git plugin
-----------------------------------------------
[guest@guest-3:~/projects/platform/Python] $ ./InstallJenkinsPlugin.sh 
******************************************

Usage: ./InstallJenkinsPlugin.sh plugin1 

[guest@guest-3:~/projects/platform/Python] $ ./InstallJenkinsPlugin.sh 
******************************************

Usage: ./InstallJenkinsPlugin.sh plugin1 

******************************************

    [guest@guest-3:~/projects/platform/Python] $ ./InstallJenkinsPlugin.sh
    ******************************************
    
    Usage: ./InstallJenkinsPlugin.sh plugin1 
    
    ******************************************
    [guest@guest-3:~/projects/platform/Python] $ 

    
    [guest@guest-3:~/projects/platform/Python] $ ./InstallJenkinsPlugin.sh maven-plugin
    Checking installation status of Plugin  maven-plugin
    Plugin maven-plugin  Already installed 
     maven-plugin : --- SKIPPED -- 
    Requesting dependency plugin : javadoc 
    Checking installation status of Plugin  javadoc
    Plugin javadoc  Already installed 
     javadoc : --- SKIPPED -- 
    Requesting dependency plugin : mailer 
    Checking installation status of Plugin  mailer
    Plugin mailer  Already installed 
     mailer : --- SKIPPED -- 
    Requesting dependency plugin : token-macro 
    Checking installation status of Plugin  token-macro
    Plugin token-macro  Already installed 
     token-macro : --- SKIPPED -- 
    Granting permissions
   
    [guest@guest-3:~/projects/platform/Python] $ ./InstallJenkinsPlugin.sh git
    Checking installation status of Plugin  git
    Plugin git  Already installed 
     git : --- SKIPPED -- 
    Requesting dependency plugin : scm-api 
    Checking installation status of Plugin  scm-api
    Plugin scm-api  Already installed 
     scm-api : --- SKIPPED -- 
    Requesting dependency plugin : git-client 
    Checking installation status of Plugin  git-client
    Plugin git-client  Already installed 
     git-client : --- SKIPPED -- 
    Requesting dependency plugin : ssh-credentials 
    Checking installation status of Plugin  ssh-credentials
    Plugin ssh-credentials  Already installed 
     ssh-credentials : --- SKIPPED -- 
    Requesting dependency plugin : credentials 
    Checking installation status of Plugin  credentials
    Plugin credentials  Already installed 
     credentials : --- SKIPPED -- 
    Requesting dependency plugin : parameterized-trigger 
    Checking installation status of Plugin  parameterized-trigger
    Plugin parameterized-trigger  Already installed 
     parameterized-trigger : --- SKIPPED -- 
    Requesting dependency plugin : conditional-buildstep 
    Checking installation status of Plugin  conditional-buildstep
    Plugin conditional-buildstep  Already installed 
     conditional-buildstep : --- SKIPPED -- 
    Requesting dependency plugin : promoted-builds 
    Checking installation status of Plugin  promoted-builds
    Plugin promoted-builds  Already installed 
     promoted-builds : --- SKIPPED -- 
    Requesting dependency plugin : subversion 
    Checking installation status of Plugin  subversion
    Plugin subversion  Already installed 
     subversion : --- SKIPPED -- 
    Requesting dependency plugin : token-macro 
    Checking installation status of Plugin  token-macro
    Plugin token-macro  Already installed 
     token-macro : --- SKIPPED -- 
    Requesting dependency plugin : credentials 
    Checking installation status of Plugin  credentials
    Plugin credentials  Already installed 
     credentials : --- SKIPPED -- 
    Requesting dependency plugin : ssh-credentials 
    Checking installation status of Plugin  ssh-credentials
    Plugin ssh-credentials  Already installed 
     ssh-credentials : --- SKIPPED -- 
    Requesting dependency plugin : credentials 
    Checking installation status of Plugin  credentials
    Plugin credentials  Already installed 
     credentials : --- SKIPPED -- 
    Requesting dependency plugin : promoted-builds 
    Checking installation status of Plugin  promoted-builds
    Plugin promoted-builds  Already installed 
     promoted-builds : --- SKIPPED -- 
    Requesting dependency plugin : multiple-scms 
    Checking installation status of Plugin  multiple-scms
    Plugin multiple-scms  Already installed 
     multiple-scms : --- SKIPPED -- 
    Granting permissions
    
