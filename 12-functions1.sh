
#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is failed"
        exit 1
    else    
        echo "$2 is success"
    fi    
}    

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git # Just checking whether installed or not
VALIDATE $? "Listing git"
