resource "aws_security_group" "web_server" {
  #name        = var.ec2_security_group_name
  #description = var.ec2_security_group_description
  vpc_id      = var.ec2_vpc_id
 
  ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
    description      = "Allow traffic on port 80 from everywhere"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
  tags = {
    Name = "terra"
  }
}


resource "aws_instance" "this_ec2" {
    ami = var.this_This_ami    #var.this_image_id 
    disable_api_stop  = var.this_disable_api_stop  #var.this_disable_api_stop 
    disable_api_termination =  var.this_disable_api_termination  #var.this_disable_api_termination  
    instance_type = var.this_ec2type  #var.this_any.instance_type_list[0]
    subnet_id =  var.this_aws_instance_subnet 
    key_name                = var.This_key
    vpc_security_group_ids  = [aws_security_group.web_server.id]

}   