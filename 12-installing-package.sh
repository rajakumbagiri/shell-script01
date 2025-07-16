#!/bin/bash

USERID=$(id -u)
TIMETAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=&(echo $0 | cut -d "." -f1)
LOGFILE=/temp/$SCRIPT_NAME-TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
         echo -e "$2...$R FAILURE $N"
         exit1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then
     echo "please run this script with root access"
     exit1
else "you are root user."
fi

for i in $@
do
    echo "package to install: $!"
    dnf list installed $! &>>LOGFILE

    if [ $? -eq 0 ]
    then
        echo -e "$i already installed ..$Y SKIPPING $N"
     else
        dnf install $i -y &>>LOGFILE
        VALIDATE $? "Install of $i"
    fi
done