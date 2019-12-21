#!/usr/bin/env bash
set -x #echo on
aws --profile owlmtn iam create-policy \
   --policy-name rds-s3-import-policy \
   --policy-document '{
     "Version": "2012-10-17",
     "Statement": [
       {
         "Sid": "s3import",
         "Action": [
           "s3:GetObject",
           "s3:ListBucket"
         ],
         "Effect": "Allow",
         "Resource": [
           "arn:aws:s3:::awsdk-book",
           "arn:aws:s3:::awsdk-book/*"
         ]
       }
     ]
   }'