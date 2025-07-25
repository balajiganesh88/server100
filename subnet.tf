resource "aws_subnet" "publicsubnet100" {
    cidr_block = "172.17.0.0/24"  
    vpc_id = "aws_vpc.vpc200.id"
    tags = {
        Name = "publicsubnet1"
    }
}
resource "aws_subnet" "publicsubnet200" {
    cidr_block = "172.17.1.0/24"
    vpc_id = "aws_vpc.vpc200.id"
    tags = {
        Name = "publicsubnet2"
    }
}
resource "aws_subnet" "privatesubnet100" {
    cidr_block = "172.17.2.0/24"
    vpc_id = "aws_vpc.vpc200.id"
    tags = {
        Name = "privatesubnet1"
    }
}
resource "aws_subnet" "privatesubnet200" {
    cidr_block = "172.17.3.0/24"
    vpc_id = "aws_vpc.vpc200_vpc.id"
    tags = {
        Name = "privatesubnet2"
    }
}

