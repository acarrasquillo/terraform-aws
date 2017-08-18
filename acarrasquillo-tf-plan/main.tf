provider "aws" {
  profile = "${var.aws_profile}"
  region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-10547475"
  instance_type = "t2.nano"
}
