variable "region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  type    = string
  default = "tp2-localstack-bucket"
}

variable "instance_ami" {
  type    = string
  default = "ami-12345678"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "localstack_endpoint" {
  type    = string
  default = "http://localhost:4566"
}
