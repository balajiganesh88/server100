terraform {
  required_providers {
    aws = {source = "hashicorp/aws"
    version = "~> 6.5"}
  }
}
provider "aws" {
    region = "us-east-1" 
    access_key = "AKIAQUOGQXX7CKA3X36O"
    secret_key = "aNSTUsldWnhHeIQNc8gxNirAKDVOh/W6cheb+uh"
}

