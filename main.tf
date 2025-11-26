provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0fa3fe0fa7920f68e" # Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "MySimpleEC2"
  }
}

