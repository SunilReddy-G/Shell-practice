#!bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/Shell-script"
LOGS_FILE="/var/log/Shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N"
fi

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days] $N"
    exit 1

}

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1" |tee -a $LOGS_FILE
}

if [ $# -lt 2 ]; then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]; then
    ech -e "$R Source Directory: $SOURCE_DIR does not exist"
    exit 1
fi
if [ ! -d $DEST_DIR ]; then
    ech -e "$R Destination Directory: $SDEST_DIR does not exist"
    exit 1
fi

### Find the file
FILES+$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

log "Backup started"
log "Source Directory: $SOURCE_DIR"
log "Destination Directory: $DEST_DIR"
log "Days: $DAYS"