provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

# Define your EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0645cf88151eb2007"  # Replace with the AMI ID of your choice
  instance_type = "t2.micro"  # Change to your desired instance type
  key_name      = "Sushdemo"  # Change to your SSH key pair name

  tags = {
    Name = "example-instance"
  }
}
