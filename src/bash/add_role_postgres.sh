#!/usr/bin/env bash
set -x #echo on
aws --profile owlmtn rds add-role-to-db-instance \
   --db-instance-identifier pg-owlmtn-dev \
   --feature-name s3Import \
   --role-arn arn:aws:iam::170292442142:role/rds-s3-import-role   \
   --region us-east-1