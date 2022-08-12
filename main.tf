locals {
  my_ami = "ami-068257025f72f470d"
  instance_type = "t2.micro"
} 

resource "aws_instance" "my_instance1" {
	ami = local.my_ami
	instance_type = local.instance_type
	tags = {
	     Name = "terraform-instence1"
	}
}

resource "aws_instance" "my_instance2" {
	ami = local.my_ami
	instance_type = local.instance_type
	tags = {
	     Name = "terraform-instence2"
	}
}