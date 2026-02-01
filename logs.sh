
#!/bin/bash
customerid=$(id -u)

Logs_folder="/var/log/shell-script"
log_file="/var/log/shell-script/$0.log"


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


dnf install mysql -y &>> $log_file

validate $? "mysql"

dnf install nginx -y &>> $log_file

validate $? " nginix"





  

