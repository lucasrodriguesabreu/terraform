provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "webserverjavateste" {
    ami = "ami-0889a44b331db0194"
    instance_type = "t2.micro"

    tags = {
    Name = "webserverjavateste"
  }

    

    vpc_security_group_ids = [
    "${aws_security_group.securitygroupssheweb.id}"
  ]
}

resource "aws_vpc" "vpc_prd" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc_prd.id
    cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.vpc_prd.id
    cidr_block = "10.0.2.0/24"
}
