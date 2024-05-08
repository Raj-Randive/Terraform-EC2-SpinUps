// Infrastructure as a code 

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""

}

// Creating a subnet in "default-VPC"
resource "aws_subnet" "main" {
  vpc_id     = ""
  cidr_block = "172.31.32.0/20"

  tags = {
    Name = "Main"
  }
}

// Create "AWS-Instance"
resource "aws_instance" "test-EC2" {
  count=5
  ami           = ""
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = "test001"
  }
}
