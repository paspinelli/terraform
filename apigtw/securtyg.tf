#module "vote_service_sg" {
 # source = "terraform-aws-modules/security-group/aws"

  #name        = "proxy-sg"
  #description = "Security group for proxysquid"
  #vpc_id = module.vpc.vpc_id
  #egress_rules = ["all-all"]
  #ingress_with_cidr_blocks = [
   ## {
     # from_port   = 8080
      #to_port     = 8090
      #protocol    = "tcp"
      #description = "User-service ports"
      #cidr_blocks = "10.10.0.0/16"
    #}
  #],
#}










