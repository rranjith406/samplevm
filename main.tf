provider "aws" {
  region = "ap-south-1"
  version = ">= 2.38.0"
  shared_credentials_file = "/home/ec2-user/cred"
  profile = "default"
}
resource "aws_instance" "this" {
  ami              = "ami-0732b62d310b80e97"
  instance_type    = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id ="subnet-8fa19fe7"
  }
