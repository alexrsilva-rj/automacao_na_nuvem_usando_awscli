terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "bia-tf"
}

resource "aws_instance" "bia-cli"{
ami = "ami-02f3f602d23f1659d"
instance_type = "t3.micro"
tags = {
  Name = "bia-terraform"
}
vpc_security_group_ids = [ "sg-03f92691d6bd2ef43" ]
user_data = file("user_data.sh")
iam_instance_profile = "role-acesso-ssm"
root_block_device {
  volume_size = 8
}
}
