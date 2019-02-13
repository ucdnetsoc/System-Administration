#!/bin/bash

usage(){
    echo "Usage: $0"
    exit 1
}

if [[ $# -ne 0 ]]
then
    usage
fi

for user in $(users)
do
	echo $(grep $user /etc/passwd | sed -n 's/^..*:\([^,]*\),.*$/\1/p')
done
