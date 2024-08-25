# Terraform - AWS - Production - Sample
This is a respository to demo creating resources required for a 3-Tier Web application on AWS using Terraform. This includes creation of Application Loadbalancer, EC2 instances, S3 Bucket, VPC, Subnets and Route Tables. 
Also in Terraform script we have used variables, modules, tfvars, AWS System and secret management, etc. 

The intent is to use this as base repository to create production resources. 

## Prerequisite
1. [Download](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and [configure](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html) AWS CLI for your AWS Account. 
2. [Download](https://git-scm.com/downloads) Git. 
3. [Download](https://developer.hashicorp.com/terraform/install?product_intent=terraform) and install Terraform. 

## Steps
1. Download the repository and go to the base folder 

    `cd terraform-aws-prod-sample`
2. Initialize terraform

    `terraform init`
3. Verify resource creation
    
    `terraform plan`
4. Create resources in AWS
    
    `terraform apply`

## Architecture
![Architecture](architecture/prod.jpg)

## To Do List
1. Update Readme. 
2. In each region create 1 vpc, and 4 subnets - a pair of Public and Private subnet in 2 AZs. Create EC2 in each subnet i.e. total 4. 
4. Convert into module and add region while calling from main terraform script. (Link: https://www.simplethread.com/building-a-multi-region-aws-environment-with-terraform/)

## Notes

[def]: <architecture/prod.jpeg>