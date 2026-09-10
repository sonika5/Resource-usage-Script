#!/bin/bash 

############################################
#
# this shell script is used to track the aws resource usage for:
# aws S3, aws Lambda, aws IAM , aws EC2 Instances 
# Date : 03-09-2026 Time : 22:35 
#
############################################


set -x

#list S3 buckets 
echo "Print list of s3 buckets"
aws s3 ls

#list EC2 Instances 
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list Lambda
echo "Print list of Lambda functions"
aws lambda list-functions

#list IAM 
echo "Print list of IAM users"
aws iam list-users

