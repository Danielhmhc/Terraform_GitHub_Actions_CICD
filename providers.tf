provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "danielhmbucket100"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "dan-03feb-dblocks"
    encrypt        = true
  }
}
