#!/usr/bin/bash
var=$1
pass="SUCCESS"
help() {
    echo "USAGE: query_server.sh [OPTION]"
    echo "Prints the name of the current server as: "Current Server:[servername]""
    echo "      -1 Prints the username with the server name"
    echo "Exit status:"
    echo "SUCCESS if OK"
    echo "FAILURE if Problem with the command line"
}

if [[ -z "$var" ]]
then
    var="Current server: $HOSTNAME"
    echo $pass
    echo $var
elif [[ $var = -1 ]]
then
    var="Current server: $USER@$HOSTNAME"
    echo $pass
    echo $var
elif [[ $var = "--help" ]]
then
    help
else
    pass="FAILURE"
    echo $pass
    echo "ERROR MESSAGE: Type nothing or -1 for function, otherwise type --help for more information"
fi

