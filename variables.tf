variable "cidr" {
  # This will give about 65536 IPs.
  # However not using this we are not fetching value from AWS Parameter store for CIDR. 
  default = "10.0.0.0/16" 
}

#Region in which applicaiton resources will be created. 
variable "region" {
  default = "ap-south-1"
}