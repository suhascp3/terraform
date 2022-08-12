resource "aws_instance" "my_instance1" {
	ami = var.my_ami
	instance_type = var.instance_type
	tags = {
	     Name = "terraform-instence1"
	}
}

