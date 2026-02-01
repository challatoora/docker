
#!/bin/bash
customerid=$(id -u)

if [ $customerid -eq 0 ]; then
    echo " installaling my sql "
else
    echo " u r not root user"

    exit 1
fi

  dnf install mysql -y

if [ $? -eq 0 ]; then
    echo " sucees"
else
    echo " failed"
fi