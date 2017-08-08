# EC2 Auto Scaling Group Stack
This will create an EC2 AutoScaling  with Port 22 open, so you can remote into any instances created
**This will only work in ap-southeast-2 region, you will have to change either the region on the AMI Iimage id to get it work**

## Usage

### 1. Change the KeyName Parameter in ec2-as-param.json to your KeyPair.

To create a KeyPair
  1. Open the AWS Console
  2. Select EC2
  3. Select "Key Pairs" under "Network & Security"

** NOTE: This cloudformation stack will create a security group with Port 80 open to the public **

### 2. Run the `run_task.sh` script to execute


## What is an AutoScaling Group?

It is an instance auto scaler, where you can create multiple EC2 Instances that will automatically get created everytime an instatnce is terminated.
