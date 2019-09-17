#!/usr/bin/bash
var=$1
pass="SUCCESS"

if [ -z "$var" ]
then
    var="Current server: $HOSTNAME"
    echo $pass
    echo $var
else
    pass="FAILURE"
    echo $pass
    echo "ERROR MESSAGE: Type nothing as argument for function"
fi
