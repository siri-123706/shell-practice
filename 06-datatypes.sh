#!/bin/bash

# this is comment
NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date) # $ store the date in timestap variable out give hrom var
echo "Script executed at: $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2)) #first bracket excute cmd get out store in 2nd bracket

echo "SUM of $NUMBER1 and $NUMBER2 is: $SUM"