# Get AMI Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "ami" {
  name = "/terraform/cx/ami" 
}

# Get password from AWS Secret
#data "aws_secretsmanager_secret" "by-name" {
#  name = "example"
#}

# Get EC2 Key Pair Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "ec2-key-name" {
  name = "/terraform/cx/ec2-key-name" 
}

# Get AMI Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "instance_type" {
  name = "/terraform/cx/instance-type" 
}

# Get Region 1 Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1" {
  name = "/terraform/cx/region-1" 
}

# Get Region 1 CIDR Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1-cidr" {
  name = "/terraform/cx/region-1/cidr" 
}

# Get Subnet 1 Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1-subnet-1" {
  name = "/terraform/cx/region-1/subnet-1" 
}

# Get Subnet 1 CIDR Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1-subnet-1-cidr" {
  name = "/terraform/cx/region-1/subnet-1/cidr" 
}

# Get Subnet 2 Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1-subnet-2" {
  name = "/terraform/cx/region-1/subnet-2" 
}

# Get Subnet 2 CIDR Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "region-1-subnet-2-cidr" {
  name = "/terraform/cx/region-1/subnet-2/cidr" 
}

# Get S3 Bucket Name from AWS System Manager Parameter Store
data "aws_ssm_parameter" "s3" {
  name = "/terraform/cx/s3" 
}
