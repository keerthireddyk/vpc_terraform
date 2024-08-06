resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.test_vpc.id


  tags = {
    Name = "igw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id

  }
  tags = {
    Name = "rt"
  }
}

//assosiate subnet with route table
resource "aws_route_table_association" "rt_assosiate" {
  //vpc_id = aws_vpc.test_vpc.id
  subnet_id      = aws_subnet.test_subnet.id
  route_table_id = aws_route_table.rt.id
}