#!/bin/bash

echo "AWS IAM Users List"

aws iam list-users --query 'Users[].UserName' --output text
