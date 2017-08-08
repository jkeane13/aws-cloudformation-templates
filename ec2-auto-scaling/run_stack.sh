#!/bin/bash

echo Validating Stack..

aws cloudformation validate-template \
  --template-body file://ec2-as-group.yml

aws cloudformation create-stack \
  --stack-name EC2-AutoScalingGroup \
  --template-body file://ec2-as-group.yml \
  --parameters file://ec2-as-param.json

echo Creating Stack...

aws cloudformation wait stack-create-complete \
  --stack-name EC2-AutoScalingGroup

echo Stack Created...
