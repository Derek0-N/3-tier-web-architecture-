# variables.tf
variable "region" {
  description = "The AWS region to deploy the resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_app_subnet_cidrs" {
  description = "CIDR blocks for the private app subnets"
  default     = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_db_subnet_cidrs" {
  description = "CIDR blocks for the private DB subnets"
  default     = ["10.0.4.0/24", "10.0.5.0/24"]
}
