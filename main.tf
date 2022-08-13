data "aws_ami" "my_ubuntu" {
    most_recent = true

    filter {
      name = "name"
      values = ["K8-Master"]
    }
}


resource "aws_instance" "my_instance1" {
	ami = data.aws_ami.my_ubuntu.id
	instance_type = var.instance_type
	tags = {
	     Name = "terraform-instence1"
	}
}

