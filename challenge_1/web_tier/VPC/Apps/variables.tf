variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name to assign to the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "The name to assign to the subnet"
  type        = string
}
variable "availability_zone" {
  description = "The name to assign to the availability_zone"
  type        = string
}
variable "map_public_ip_on_launch" {
  description = "The name to assign to the map_public_ip_on_launch"
  type        = bool
}

