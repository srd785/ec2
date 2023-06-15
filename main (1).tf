provider "aws" {
  access_key = "AKIAWQQ2VW7QLKS7P27K"
  secret_key = "Z85K00xTx/CXdoa2NKSUB1fS0zHwXa2WbTO2SuOL"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-012a02c31b6079415"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

