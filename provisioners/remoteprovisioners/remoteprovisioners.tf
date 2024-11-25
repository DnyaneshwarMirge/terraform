provider "aws" {
    region =  "ap-south-1"
    profile = "configs"
}

resource "aws_instance" "this_aws_instance" {
  ami = "ami-0614680123427b75e"
  vpc_security_group_ids = ["sg-0f4734f182e556bae"]
  key_name = "d"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [
      "sudo yum update",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user" # Default user for ec2-user AMIs; replace if needed
      private_key = file("${path.module}/id_rsa.pem")
      host        = self.public_ip
    }
  }

  tags = {
    Name = "MyInstance"
  }
}

/*provisioner "remote-exec" {
  script = "path/to/script.sh"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("path/to/id_rsa.pem")
    host        = self.public_ip
  }
}*/

 