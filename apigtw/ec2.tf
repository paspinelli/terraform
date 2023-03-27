module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0747bdcabd34c712a"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = [module.vote_service_sg.security_group_id]
  subnet_id              = module.vpc.private_subnets[1]
  iam_instance_profile   = resource.aws_iam_instance_profile.role-instanceprofile.name
  user_data              = <<-EOF
              #!/bin/bash
              // sudo su
              apt-get update  
              apt-get install nginx -y
              ls
            EOF 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}