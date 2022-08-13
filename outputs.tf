output "ami_id" {
    description = "This is the k8s master ami ID ....."
    value = data.aws_ami.my_ubuntu.id
}

output "owner" {
    description = "This is the k8s master owner ....."
    value = data.aws_ami.my_ubuntu.owner_id
}

output "check_public" {
    description = "This is the k8s master ami check_public ....."
    value = data.aws_ami.my_ubuntu.public
}

output "intance_public-ip" {
    description = "This is the intance_public-ip ....."
    value = resource.aws_instance.my_instance1.public_ip
}