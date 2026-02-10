terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = var.region

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = var.localstack_endpoint
    ec2 = var.localstack_endpoint
  }

  s3_use_path_style = true
}

resource "aws_s3_bucket" "tp_bucket" {
  bucket = var.bucket_name
}

resource "aws_instance" "tp_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "tp2-instance"
  }
}
