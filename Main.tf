provider "aws" {
  region = "US East"
}

resource "aws_instance" "instance1" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "test.pem"
  security_groups = "launch-wizard-3"
  count = 1
}