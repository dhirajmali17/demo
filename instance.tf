terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
aws_access_key_id = AKIATOQWCSIWMOGU2N6L
aws_secret_access_key = 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
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance2" {
  ami                         = "ami-02d26659fd82cf299"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-03bfdf85fe22a8020"
  associate_public_ip_address = true
  key_name                    = "dhiraj"
  count                       = 1

  tags = {
    Name = "tf-example"
  }
}
