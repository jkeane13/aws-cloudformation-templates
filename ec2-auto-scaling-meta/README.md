# EC2 AutoScaling Stack with Metadata
This will create an AutoScaling Stack with 1 stance and set up an Nginx Server. 

The example will show how to use metadata to start web servers instead of whole relying on filling out the UserData
**This will only work in ap-southeast-2 region, you will have to change either the region on the AMI Iimage id to get it work**

## Usage

### 1. Change the KeyName Parameter in *-param.json to your KeyPair.

To create a KeyPair
  1. Open the AWS Console
  2. Select EC2
  3. Select "Key Pairs" under "Network & Security"

** NOTE: This cloudformation stack will create a security group with Port 80 and Power 22 open to the public **

### 2. Run the `run_task.sh` script to execute
