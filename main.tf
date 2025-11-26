provider "aws" {
  region     = "us-east-1"
}

# EC2
module "web_server" {
  source = "./modules/ec2"
  ami = "ami-0fa3fe0fa7920f68e"
  
}
terraform {
  backend "s3" {
    bucket         = "my-state-terraform-bucket-1128"   # 👈 replace with your S3 bucket name
    key            = "data1/terraform.tfstate"       # 👈 path inside bucket
    region         = "us-east-1"                   # 👈 your AWS region
    encrypt        = true                          # encrypt state at rest
  }
}
