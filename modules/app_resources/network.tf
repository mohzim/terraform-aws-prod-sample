# Create VPC, Subnet, IG, Route Table, Route Table Association for Region India-Mumbai
resource "aws_vpc" "in-vpc" {
  cidr_block = data.aws_ssm_parameter.region-1-cidr.value
  provider = aws.ind

}

resource "aws_subnet" "in-public-sub1" {
  vpc_id                  = aws_vpc.in-vpc.id
  cidr_block              = data.aws_ssm_parameter.region-1-subnet-1-cidr.value
  availability_zone       = data.aws_ssm_parameter.region-1-subnet-1.value
  map_public_ip_on_launch = true
}

resource "aws_subnet" "in-private-sub1" {
  vpc_id                  = aws_vpc.in-vpc.id
  cidr_block              = data.aws_ssm_parameter.region-1-subnet-2-cidr.value
  # availability_zone       = data.aws_ssm_parameter.region-1-subnet-1.value
  availability_zone       = data.aws_ssm_parameter.region-1-subnet-2.value
  map_public_ip_on_launch = false
}

resource "aws_internet_gateway" "in-igw" {
  vpc_id = aws_vpc.in-vpc.id
}

resource "aws_route_table" "in-rt" {
  vpc_id = aws_vpc.in-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.in-igw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.in-public-sub1.id
  route_table_id = aws_route_table.in-rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.in-private-sub1.id
  route_table_id = aws_route_table.in-rt.id
}