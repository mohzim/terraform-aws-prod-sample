terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.62.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  alias  = "ind"
}

provider "aws" {
  region = "ap-southeast-1"
  alias  = "sgp"
}

