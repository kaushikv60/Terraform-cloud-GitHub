terraform {
    required_version = "~> 1.2.4" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.22"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "VedInfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t1.micro"
}
