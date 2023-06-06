terraform {
  backend "s3" {
    bucket = "some-bucket"
    key = "path/to/key"
    region = "some-aws-region"
  }}