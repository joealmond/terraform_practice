terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "mandulaj_tf_test" {
    ami = "ami-0faab6bdbac9486fb"
    instance_type = "t2.nano"
    subnet_id = "subnet-033ffa3d3932e229e"
}