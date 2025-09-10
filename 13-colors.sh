#!/bin/bash

USERID=$(id -u)
R="\e[31m" # red color
G="\e[32m" # green color
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ] # user checks running root access or not 
then
    echo -e "$R ERROR:: Please run this script with root access $N" #error print red color , $R red color 
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then # -e enable color and $G-> success print in green and $N end color here 
        echo -e "Installing $2 is ... $G SUCCESS $N"
    else
        echo -e "Installing $2 is ... $R FAILURE $N" # if -e not given colors not enabled
        exit 1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo -e "Nothing to do MySQL... $Y already installed $N" #$Y if already installed it shows warining yellow
fi

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "Nothing to do python... $Y already installed $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "Nothing to do nginx... $Y already installed $N"
fi
