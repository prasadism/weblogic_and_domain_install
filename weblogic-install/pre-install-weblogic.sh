#!/bin/bash

#create users for weblogic
groupadd -g 9000 oracle
useradd -u 9100 -g oracle oracle

#Create directory structure
mkdir -p /u01/app/oracle/middleware
mkdir -p /u01/app/oracle/config/domains
mkdir -p /u01/app/oracle/config/applications
chown -R oracle:oinstall /u01
chmod -R 775 /u01/
