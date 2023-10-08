## provider variables ##
region = "us-east-1"
access_key = ""
access_password = ""

## SG Remote backend variables ##
sg_count = 1
backend_bucket = "s3-abc"
backend_key = [
    "env:/SG2/sg-prd.tfstate"
]
backend_region = "us-east-1"
ami_id = "ami-0c55b159cbfafe1f0"  # Example AMI ID, replace with a valid AMI ID
instance_type = "t2.micro"
instance_name = "MyAppEC2Instance"


