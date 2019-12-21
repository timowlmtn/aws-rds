#!/usr/bin/env bash
set -x #echo on
aws --profile owlmtn iam attach-role-policy \
   --policy-arn arn:aws:iam::170292442142:policy/rds-s3-import-policy \
   --role-name rds-s3-import-role