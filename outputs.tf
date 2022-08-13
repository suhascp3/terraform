output "ami_id" {
    description = "This is the k8s master ami ID ....."
    value = data.aws_ami.my_ubuntu.id
}

output "owner" {
    description = "This is the k8s master owner ....."
    value = data.aws_ami.my_ubuntu.owner_id
}