terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-098f16afa9edf40be"
  instance_type = "t2.micro"