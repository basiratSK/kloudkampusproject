terraform {
        required_providers {
        aws = {
                source = "registry.terraform.io/hashicorp/aws"
                version = "~> 4.16"
                }
        }

required_version = ">=1.0.7"
}
provider "aws" {
region = "ap-southeast-1"
access_key = "AKIASS6VNYT4BSISMGPF"
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
