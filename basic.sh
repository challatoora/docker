#!/bin/bash

# Name1=murali
# Name2=ashok
# echo "$Name1 and $Name2"S
# Name3=$1
# Name4=$2
# echo ashok
# if [ $? -eq 0 ]; then
# echo " sucess"
# else 
#     echo " fail"
# fi
# echo "$1 and $2"
# echo "please enter first name "
# read name 
# echo "my name is $name"
# echo " please enter password"
# read -s passwd
# echo "password is $passwd "
# folder1=/var/log/shell/
# N1=$1
# N2=$2
# N3=$3
# echo " total variables $@ "
# echo " total num of variables $# "
# echo " name of the script is $0 "
# echo " exirt status $? "
# echo " present location $PWD "
# a=10
# b=ashok
# c=$(($a+$b))
# echo "total sum $c"
#  a=("apple" "mango")

#  echo "${a[@]}"


# price=24
# if [ $price -ge 25 ]; then
# echo " it is a premimum ptoduct"
# else
#     echo "its a normal product "

# fi

# echo0 " murali"
# if [ $? -eq 0 ]; then
# echo " sucess"
# else 
#    echo " fail "

# fi

# murali=$(id -u)
# echo "$murali"

# if [ $murali -ne 0 ]; then
# echo " u r not user"
# exit 1  
# fi

# dnf install tree -y
# if [ $? -eq 0 ]; then
# echo " installing tree"
# else 
#      echo " failes"

ashok=$(id -u)
if [ $ashok -ne 0 ]; then
 echo " u r not user"
 exit 1
fi

validate(){
    if [ $1 -eq 0 ]; then
    echo "$2 installing $3"
    else
        echo " faled $2 failed"
    fi    
}

dnf install tree -y
validate $? "tree" "sucess"




