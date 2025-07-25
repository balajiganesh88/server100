terraform {
  required_providers {
    aws = {source = "hashicorp/aws"
    version = "~> 6.5.0"}
  }
}
provider "aws" {
    region = "us-east-1" 
    access_key = "AKIAQUOGQXX7BTPLZXNC"
    secret_key = "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"
}
resource "aws_vpc" "VPC100" {
    cidr_block = "172.17.0.0/16"
    tags =  {
        Name = "vpc100"
        }
}
