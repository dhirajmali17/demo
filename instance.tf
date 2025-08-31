terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  aws_access_key_id = "AKIATOQWCSIWAD27V3NM"
  aws_secret_access_key = "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"
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
