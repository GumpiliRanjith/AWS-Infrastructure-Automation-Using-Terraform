module "vpc" {
  source      = "/Users/ranjith/Desktop/terraform2/modules/vpc"
  cidr        = "10.0.0.0/16"
  subnetcidr  = "10.0.1.0/24"
  subnet2cidr = "10.0.2.0/24"
}

# ALB Module

module "alb" {

  source = "./modules/alb"

  vpc_id = module.vpc.vpc_id

  subnet_ids = [

    module.vpc.subnet_id,

    module.vpc.subnet2_id

  ]

}

module "autoscaling" {

  source = "./modules/autoscaling"

  vpc_id = module.vpc.vpc_id

  subnet_ids = [

    module.vpc.subnet_id,

    module.vpc.subnet2_id

  ]

  ami_id = "ami-0ba051b596cabfebe"

  instance_type = "t3.micro"

  alb_security_group_id = module.alb.alb_security_group_id

  target_group_arn = module.alb.target_group_arn

}
