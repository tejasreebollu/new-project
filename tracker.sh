#!/bin/bash

echo "AWS Resource Tracker"

echo "----------------------"
echo "EC2 Instances:"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output text

echo "----------------------"
echo "S3 Buckets:"
aws s3 ls

echo "----------------------"
echo "IAM Users:"
aws iam list-users --query 'Users[*].UserName' --output text
