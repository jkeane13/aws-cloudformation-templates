#!/bin/bash

echo Validating Stack..

aws cloudformation validate-template \
  --template-body file://ec2-auto-scaling-meta.yml

aws cloudformation create-stack \
  --stack-name EC2-Autoscaling-Stack-Meta \
  --template-body file://ec2-auto-scaling-meta.yml \
  --parameters file://ec2-auto-scaling-param.json

echo Creating Stack...

aws cloudformation wait stack-create-complete \
  --stack-name EC2-Autoscaling-Stack-Meta

echo Stack Created...
