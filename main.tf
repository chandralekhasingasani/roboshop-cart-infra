module "vpc"{
  source              ="git::https://github.com/chandralekhasingasani/tf-module-vpc.git"
  CIDR_BLOCK          = var.CIDR_BLOCK
  AZ                  = var.AZ
  ENV                 = var.ENV
  SUBNET_CIDR_BLOCK   = var.SUBNET_CIDR_BLOCK
  COMPONENT           = var.COMPONENT
  DEFAULT_VPC_ID      = data.terraform_remote_state.tgw.outputs.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR_BLOCK = data.terraform_remote_state.tgw.outputs.DEFAULT_VPC_CIDR_BLOCK
  TGW_ID              = data.terraform_remote_state.tgw.outputs.TGW_ID
  TGW_DEFAULT_ATTACHMENT_ID = data.terraform_remote_state.tgw.outputs.TGW_DEFAULT_ATTACHMENT_ID
  TGW_DEFAULT_ROUTE_TABLE_ID = data.terraform_remote_state.tgw.outputs.TGW_DEFAULT_ROUTE_TABLE_ID
  PUBLIC_ROUTE_TABLE_ID_DEFAULT_VPC = data.terraform_remote_state.tgw.outputs.PUBLIC_ROUTE_TABLE_ID_DEFAULT_VPC
}