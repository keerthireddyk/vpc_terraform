resource "aws_vpc" "test_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    name = "test_vpc"
  }
}

//data "aws_availability_zones" "available" {}

resource "aws_subnet" "test_subnet" {
  //availability_zone       = data.aws_availability_zones.available.names
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = var.subnets_cidr
  map_public_ip_on_launch = "true"


  tags = {
    Name = "test_subnet"
  }
}
