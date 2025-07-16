#!/bin?bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
    exit1

else
    echo "you are super user."
fi

dnf install mysql -y

if [ $? -n 0 ]
   echo "Installation of MySQL...FAILURE"
   exit1

else 
   echo "Installation of MySQL...SUCCESS"
fi

dnf install git -y

if[ $? -n 0 ]
then 
    echo "Installation of Git...FAILURE"
    exit1

else
    echo "Installation Git...SUCCESS"
fi

echo "is cript is proceeding"