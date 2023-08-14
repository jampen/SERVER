terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "app_server" {
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"

    tags = {
        Name = "MinecraftServer"
    }
}