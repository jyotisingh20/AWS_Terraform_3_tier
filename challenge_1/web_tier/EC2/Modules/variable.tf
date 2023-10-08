## provider variables ##
variable "region" {
  description = "The region of aws"
  type        = string
}
variable "access_key" {
  description = "The access key to be used"
  type        = string
}
variable "secret_key" {
  description = "The secret key to be used"
  type        = string
}
## variables for SG backend file ##
variable "sg_count" {
  description = "The sg count to be used"
  type        = number
  default = 1
}
variable "backend_bucket" {
  description = "The backend bucket to store backend file"
  type        = string
}
variable "backend_key" {
  description = "The key used to store backend file"
  type        = string
}
variable "backend_region" {
  description = "The region used for backend"
  type        = string
}
variable "subnet_id" {
  description = "The type of subnet id used"
  type        = string
}
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}
variable "sg_name" {
  description = "The name given to the sg"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to use for the instance"
  type        = string
}
variable "instance_name" {
  description = "The name of instance to start"
  type        = string
}


