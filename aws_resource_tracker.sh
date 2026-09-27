#!/bin/bash

##################

# Author:  Abhishek
# Date: 19-08-2026
#
# version: v1
#
# This sript will report the AWS resoure usage
#
##################

# AWS S3

echo "S3 Buckets:"

aws s3 ls

echo " EC2 Instances:"

aws ec2 describe-instances | jq '.Reservationr[].Instancesr[].InstanceId'

echo "lambda fucntion:"

aws lambda list-functions

echo "IAM user:"

aws iam list-users

