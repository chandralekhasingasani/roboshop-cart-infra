variable "CIDR_BLOCK" {}
variable "SUBNET_CIDR_BLOCK" {}
variable "COMPONENT" {}
variable "ENV" {}
variable "AZ" {}
variable "PROJECT_NAME" {}

data "terraform_remote_state" "tgw" {
  backend = "s3"
  config = {
    bucket = "terraform-b64"
    key    = "tgw/terraform.tfstate"
    region = "us-east-1"
  }
}
