terraform {
  backend "s3" {
    bucket         = "abc-terraform" # change this
    key            = "terraform-aws-prod-sample/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}