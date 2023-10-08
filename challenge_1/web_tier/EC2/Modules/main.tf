resource "aws_instance" "ec2-server-1" {
  count = var.instance_count ? 1:10  
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  sg_name = var.sg_name
  sg_count = var.sg_count
  vpc_id = var.vpc_id
  user_data = file(user-file.sh)
  tags = {
    Name = var.instance_name
  }
  
}
## rerun after ec2 instance 1 is created this will be helpful for reproducibility ##
/*resource "aws_instance" "ec2-server-2" {
  count = var.instance_count ? 1:10  
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  sg_name = var.sg_name
  sg_count = var.sg_count
  vpc_id = var.vpc_id
  user_data = file(user-data.sh)
  tags = {
    Name = var.instance_name
  }
  
}*/
