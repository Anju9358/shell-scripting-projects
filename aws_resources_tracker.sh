#!/bin/bash
########################
#Author: Anju
# Date: 4/8/2025
# #  Version: v1
# #  This report will show the AWS usages
# #########################

# # AWS EC2
# # AWS IAM
# # AWS S3
# # AWS Lambda
# #########################
# Use full paths for commands
#
OUTPUT_FILE=/home/ubuntu/ResourceTracker #Full path for output file
AWS=/usr/local/bin/aws   # Path to AWS CLI
JQ=/usr/bin/jq           # Path to jq

# ResourceTracker: we will redirect the output to this file 
set -x #to run this command in dbug mode

#List ec2 instances
echo "Print list of ec2 instances" > $OUTPUT_FILE
$AWS ec2 describe-instances | $JQ '.Reservations[].Instances[].InstanceId' >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE #this line is added to add some space between 2 outputs

#List s3 buckets
echo "Print list of S3 buckets" >> $OUTPUT_FILE
$AWS s3 ls >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

#List iam users
echo "Print list of iam users" >> $OUTPUT_FILE
$AWS iam list-users >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# List lambda functions
echo "Print list of lambda functions" >> $OUTPUT_FILE
$AWS lambda list-functions >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
