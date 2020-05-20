#!/bin/bash

export CONFIG_JVM_ARGS=-Djava.security.egd=file:/dev/./urandom
. $WLS_HOME/server/bin/setWLSEnv.sh


for i in $(eval echo {1..$1}); do   java weblogic.WLST create_domain.py -p myDomain$i.properties ; done
