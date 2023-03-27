resource "aws_vpc" "my_vpc" {
    cidr_block = var.aws_vpc_cidr
  
}

resource "aws_subnet" "my_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.aws_subnet_cidr
  
}
