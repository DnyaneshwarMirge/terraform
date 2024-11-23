provider "aws" {
    region =  "us-west-2"
    access_key = ""
    secret_key = ""
    //profile = "configs"
}
 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0614680123427b75e"
    vpc_security_group_ids = ["sg-0f4734f182e556bae"]
    key_name = "anup_delete"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"
      connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/id_rsa")
    host     = "${self.public_ip}"
  }
  
  
  }


}