variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The ID of the VPC to associate the Internet Gateway with"
  type        = string
}

variable "igw_name" {
  description = "The name to assign to the Internet Gateway"
  type        = string
}
