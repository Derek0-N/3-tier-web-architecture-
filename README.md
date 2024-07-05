# 3-tier-web-architecture-
Project Overview
This project demonstrates how to deploy a secure, scalable 3-tier web application on AWS using Terraform for Infrastructure as Code (IaC). The setup includes a Virtual Private Cloud (VPC) with public and private subnets, EC2 instances for the web and application layers, an RDS MySQL database, and a bastion host for secure access.

Architecture
The project consists of:

VPC: A Virtual Private Cloud to isolate our network.
Subnets: Public and private subnets across multiple availability zones.
EC2 Instances: Instances for the web and application tiers.
RDS: A managed MySQL database.
Bastion Host: For secure access to private resources.
Prerequisites
AWS Account: Ensure you have an AWS account.
Terraform: Install Terraform (version 1.0 or later).
AWS CLI: Set up the AWS CLI and configure your credentials.
SSH Key: A key pair for accessing EC2 instances.

Setup Guide
Clone the Repository:

bash

git clone https://github.com/your-username/aws-3-tier-terraform.git
cd aws-3-tier-terraform
Initialize Terraform:

bash

terraform init
Review and Apply Configuration:

bash

terraform apply
Access the Application:

Use the bastion host to securely connect to the private instances.
Access the web application via the load balancer's DNS name.
