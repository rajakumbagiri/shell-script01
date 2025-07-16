#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "exit status: $1"
    echo "any message: $2"
}

if [ $USERID -n 0 ]
then 
    echo "please run with root access"
    exit1
    else
    echo "you are super user"
fi

dnf install mysql -y
VALIDATE $? "Installing MySQL"

dnf install git -y
VALIDATE $? "Installing Git"