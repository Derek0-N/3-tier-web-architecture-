# main.tf
provider "aws" {
  region = "us-east-1"  # Adjust the region as needed
}

data "aws_availability_zones" "available" {}
