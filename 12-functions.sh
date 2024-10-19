
#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"
VALIDATE(){
    echo "exit status: $1"
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git # Just checking whether installed or not
VALIDATE $?
