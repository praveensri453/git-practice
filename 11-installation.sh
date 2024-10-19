#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "please run this script with root priveleges"
    exit 1
fi 

dnf list installed git 
if [ $? -ne 0]
then
    echo "git is not installed,going to install"
    dnf install git -y
else 
    echo "git is already installed"
fi 
   dnf list installed mysql 

if [ $? -ne 0 ]
then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "MySQL installation is failure..please check"
        exit 1
    else
        echo "MySQL installation is success"
    fi
else
    echo "MySQL is already installed..nothing to do"
fi     