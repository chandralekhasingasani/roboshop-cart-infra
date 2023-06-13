variable "CIDR_BLOCK" {}
variable "SUBNET_CIDR_BLOCK" {}
variable "COMPONENT" {}
variable "ENV" {}
variable "AZ" {}
variable "PROJECT_NAME" {}
variable "DEFAULT_VPC_CIDR_BLOCK" {
}
variable "TGW_ID" {
}
variable "TGW_DEFAULT_ATTACHMENT_ID" {
}
variable "TGW_DEFAULT_ROUTE_TABLE_ID" {
}
variable "PUBLIC_ROUTE_TABLE_ID_DEFAULT_VPC" {
}

data "terraform_remote_state" "tgw" {
  backend = "s3"
  config = {
    bucket = "terraform-b64"
    key    = "tgw/terraform.tfstate"
    region = "us-east-1"
  }
}
