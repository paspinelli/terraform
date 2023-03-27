resource "aws_instance" "my_web" {
  ami           = var.ec2_ami
  instance_type = var.aws_instance_type
  subnet_id     = aws_subnet.my_subnet.id
  
}
