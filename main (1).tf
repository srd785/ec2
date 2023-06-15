provider "aws" {
  access_key = "AKIAWQQ2VW7QNH7KJD4K"
  secret_key = "GkGSZRxnyh2HUWbF5cjfw2Wm/CypD/3XLCvt6G/q"
  region     = "ap-south-1"
}
resource "aws_instance" "example" {
  ami           = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

