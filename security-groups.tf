module "web_server_sg" {
  source              =  "terraform-aws-modules/security-group/aws//modules/http-80"
  version             = "4.8.0"
  name                = "http-traffic-${var.environment}"
  description         = "Security group for ${var.environment} with HTTP ports open within VPC"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["10.10.0.0/16"]
}
