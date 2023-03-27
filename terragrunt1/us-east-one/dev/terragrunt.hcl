# Define the module to use
terraform {
  source = "../../modulos/demo"
}

# Inherit backend config from root 
include {
  path = find_in_parent_folders()
}

# Input for module
inputs = {
  aws_vpc_cidr      = "10.0.0.0/16"
  aws_subnet_cidr   = "10.0.1.0/24"
  aws_instance_type = "t2.micro"
  ec2_ami  = "ami-0c2b8ca1dad447f8a"
}