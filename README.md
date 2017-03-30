# AWS Infrastructure Orchestration
The project Orchestrates AWS infrastructure using [Terraform](https://www.terraform.io/). It demonstrates the concept of iterator in terraform and code-reuse to create complex environments using combination of maps.

# Getting Started
Terraform at the moment does not support list inside a map. The project dmonstrates the use of how current terraform can be utilized to do some commplex multi-dimensional orchestration. 
The project will create the following resources in AWS account:
* One VPC in a region specified
* Route table associated with the VPC
* Multiple subnets inside the VPC in each of the availability zone for the region as per the N tier architecture
* Route table association with the subnets created

# Prerequisites
To run the AWS Infrasetup , you will need a AWS access and [terraform](https://www.terraform.io/downloads.html) installed. The project is tested with terraform version 0.9.2.

# Usage

# Versioning

# Authors
[Piyush Kumar](https://www.linkedin.com/in/piyushkumar82/)

# License
MIT

