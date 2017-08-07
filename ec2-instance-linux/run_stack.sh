#!/bin/bash

echo Validating Stack..

aws cloudformation validate-template \
  --template-body file://ec2-linux-instance.yml

aws cloudformation create-stack \
  --stack-name EC2-Instance-Stack \
  --template-body file://ec2-linux-instance.yml \
  --parameters file://ec2-linux-param.json

echo Creating Stack...

aws cloudformation wait stack-create-complete \
  --stack-name EC2-Instance-Stack

echo Stack Created...
