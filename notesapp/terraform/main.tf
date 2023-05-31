terraform {
        required_providers {
        aws = {
                source="registry.terraform.io/hashicorp/aws"
                version = "~> 4.16"
                }
        }

required_version = ">=1.0.7"
}
provider "aws" {
region = "ap-southeast-1"
access_key = "AKIASS6VNYT4ORJNNGER"
secret_key = "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"
        
}

resource "aws_instance" "server" {
 count = 2
ami = "ami-0df7a207adb9748c7"
instance_type = "t2.medium"

tags = {
Name = "kloudkampus"
}
}
