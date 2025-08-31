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
  access_key = "AKIATOQWCSIWAD27V3NM"
  secret_key = "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"
}

resource "aws_instance" "myinstance" {
  ami                         = "ami-02d26659fd82cf299"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-03bfdf85fe22a8020"
  associate_public_ip_address = true
  key_name                    = "dhiraj"
  count                       = 2

  tags = {
    Name = "tf-example"
  }
}
