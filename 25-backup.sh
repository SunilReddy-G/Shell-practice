#!bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/Shell-script"
LOGS_FILE="/var/log/Shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N"
fi

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days] $N"
    exit 1

}
    
}

if [ $# -lt 2 ]; then
    USAGE
fi