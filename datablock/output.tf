output "instance_ip" {
    value = aws_instance.aws_ami.public_ip
}

output "instance_id" {
    value = aws_instance.aws_ami.id
}