terraform {
  required_providers {
    aws = {source = "hashicorp/aws"
    version = "~> 6.5.0"}
  }
}
provider "aws" {
    region = "us-east-1" 
    
}
resource "aws_vpc" "VPC200" {
    cidr_block = "172.17.0.0/16"
    tags =  {
        Name = "VPC200"
        }
}
