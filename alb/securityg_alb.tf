module "alb_security" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "alb_sg"
  description = "Security group for alb"
  vpc_id = module.vpc.vpc_id
  egress_rules = ["all-all"]
}








