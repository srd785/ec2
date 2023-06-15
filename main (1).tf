provider "aws" {
  access_key = "your_access_key"
  secret_key = "your_secret_key"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

