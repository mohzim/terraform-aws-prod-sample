resource "aws_s3_bucket" "example" {
  bucket = data.aws_ssm_parameter.s3.value
}