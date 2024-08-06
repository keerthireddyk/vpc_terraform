resource "aws_vpc" "test_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    name = "test_vpc"
  }
}



resource "aws_subnet" "test_subnet" {
  
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = var.subnets_cidr
  map_public_ip_on_launch = "true"


  tags = {
    Name = "test_subnet"
  }
}
