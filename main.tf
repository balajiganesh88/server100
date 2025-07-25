terraform {
  required_providers {
    aws = {source = "hashicorp/aws"
    version = "~> 6.5.0"}
  }
}
provider "aws" {
    region = us-east-1 
    access_key = "AKIAQUOGQXX7BTPLZXNC"
    secret_key = "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"
}
resource "aws_VPC" "VPC100" {
    cidr_block = "172.17.0.0/16"
    tags =  {
        Name = "vpc100"
        }
}
resource "aws_subnet" "publicsubnet1" {
    cidr_block = "172.17.0.0/24"  
    vpc_id = "aws_VPC.VPC100.id"
    tags = {
        Name = "publicsubnet1"
    }
}
resource "aws_subnet" "publicsubnet2" {
    cidr_block = "172.17.1.0/24"
    vpc_id = "aws_VPC.VPC100.id"
    tags = {
        Name = "publicsubnet2"
    }
}
resource "aws_subnet" "privatesubnet1" {
    cidr_block = "172.17.2.0/24"
    vpc_id = "aws_VPC.VPC100.id"
    tags = {
        Name = "privatesubnet1"
    }
}
resource "aws_subnet" "privatesubnet2" {
    cidr_block = "172.17.3.0/24"
    vpc_id = "aws_VPC.VPC100.id"
    tags = {
        Name = "privatesubnet2"
    }
}

