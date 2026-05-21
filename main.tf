provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0236922087fa98b6e" # Amazon Linux 2
  instance_type = "t3.micro"

  tags = {
    Name = "MySimpleEC2"
  }
}

