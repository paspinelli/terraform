module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "proxy-sg"
  description = "Security group for proxysquid"
  vpc_id = module.vpc.vpc_id
  egress_rules = ["all-all"]
//   cidr_blocks = "10.10.0.0/16"
  ingress_with_source_security_group_id = [
    {
      from_port                = 80
      to_port                  = 80
      protocol                 = "tcp"
      description              = "for proxy"
      source_security_group_id = module.alb_security.security_group_id
    },
  ]
}










