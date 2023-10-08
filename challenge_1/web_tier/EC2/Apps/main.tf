provider "aws" {
    region =var.region
    access_key = var.access_key
    access_password = var.secret_key
}
## to store the terraform backend file ##
terraform {
  backend "s3" {
    bucket = "s3-abc"
    key ="EC2/ec2.tfstate"
    region = "us-east-1"
    
  }
}
## Created sg will be used via this ##
data "terraform_remote_state" "sg_remote"{
    count = var.sg_count
    backend = "s3"
    config ={
        bucket = var.bucket
        key = var.backend_key[count.index]
        region = var.backend_region
    }
}
module "ec2_instance" {
  source        = "../../Modules"
  subnet_id     = var.subnet_id
  ami_id        = var.ami_id
  instance_type = var.instance_type
  sg_name     = var.sg_name
  vpc_id        = var.vpc_id
  instance_name = var.instance_name
  availability_zone =var.region
}
