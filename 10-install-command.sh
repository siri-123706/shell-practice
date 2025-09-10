
#!/bin/bash

USERID=$(id -u) # only user id shows and ,in brackets command excute after store the value USERID variable

if [ $USERID -ne 0 ] # -ne =not equal to
then
    echo "ERROR:: Please run this script with root access" # stop program here and exit
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi # if condition ended here

dnf list installed mysql

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ] #$? check prevoius command success or failure and if not installed 
then
    echo "MySQL is not installed... going to install it" # going to installed
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ... SUCCESS" # if installed we check installed proprly or not
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1 # everytime came error so stop here exit 1 
    fi
else
    echo "MySQL is already installed...Nothing to do"
fi
# dnf install mysql -y

# if [ $? -eq 0 ]
# then
#     echo "Installing MySQL is ... SUCCESS"
# else
#     echo "Installing MySQL is ... FAILURE"
#     exit 1
# fi
