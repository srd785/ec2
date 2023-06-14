resource "aws_instance" "ec2_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0f6b75e2f6f138395"
  key_name      = "SRD786"
  tags = {
    Name = "Soubhagya"
  }
}

