resource "aws_instance" "my_instance" {
	ami = "ami-068257025f72f470d"
	instance_type = "t2.micro"
	count = 2 
	tags = {
	     Name = "terraform-instence"
	}
}

resource "aws_key_pair" "TF_key" {
  key_name   = "TF_key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF_key" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "tfkey"
}