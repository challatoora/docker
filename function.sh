
#!/bin/bash
customerid=$(id -u)

if [ $customerid -eq 0 ]; then
    echo " installaling my sql "
else
    echo " u r not root user"

    exit 1
fi

validate(){ 
if [ $1 -eq 0 ]; then
    echo "$2 sucees"
else
    echo "$2 failed"
fi
}


dnf install mysql -y

validate $? "mysql"



  

