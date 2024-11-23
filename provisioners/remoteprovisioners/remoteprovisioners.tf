provider "aws" {
    region =  "ap-south-1"
    profile = "configs"
} 
 
 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0614680123427b75e"
    vpc_security_group_ids = ["sg-0f4734f182e556bae"]
    key_name = "d"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"
      connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/id_rsa.pem")
    host     = "${self.public_ip}"
  } 
  }
 provisioner "remote-exec" {
    inline = [
      "ifconfig > /tmp/ifconfig.out",
      "echo 'hello world' > /tmp/test.txt",
    ]
  }


 }
 
