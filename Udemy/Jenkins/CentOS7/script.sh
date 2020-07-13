#!/bin/bash

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
DATE=$(date +%H-%M-%S)
AWS_SECRET=$4
BUCKET_NAME=$5
BACKUP=db-$DATE.sql

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAZPL2J5QNOR6VOHL7 && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "uploading your $BACKUP backup" && \
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP --debug