
#!/bin/bash

logfiles="/var/log/shell-script/$0.log"

customerid=$(id -u)

if [ $customerid -eq 0 ]; then
    echo " installaling my sql "  | tee -a $logfiles
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


dnf install mysql -y &>> $logfiles

validate $? "mysql" | tee -a $logfiles

dnf install nginx -y &>> $logfiles

validate $? " nginix" | tee -a $logfiles





  

