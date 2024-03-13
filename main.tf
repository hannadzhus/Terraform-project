provider "aws" {
    region = "us-east-2"  
}
resource "aws_vpc" "test" {
  cidr_block       = "10.0.0.0/20"
  instance_tenancy = "default"

  tags = {
    Name = "test"
  }
}
resource "aws_instance" "test" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"
  tags = {
      Name = "hanna-Instance"
  }
}