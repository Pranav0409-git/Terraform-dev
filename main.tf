# Create an EC2 Instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  key_name     = var.key_name # Replace with your EC2 key pair name
  
  tags = {
    Name = "MyTerraformEC2"
  }
}
