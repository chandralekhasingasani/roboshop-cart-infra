module "vpc"{
  source              ="git::https://github.com/chandralekhasingasani/tf-module-vpc.git"
  CIDR_BLOCK          = var.CIDR_BLOCK
  AZ                  = var.AZ
  ENV                 = var.ENV
  SUBNET_CIDER_BLOCK  = var.SUBNET_CIDR_BLOCK
}

output "CART_VPC_ID" {
  value = module.vpc.VPC_ID
}