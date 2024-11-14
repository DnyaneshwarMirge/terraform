resource "aws_instance" "this_aws_ami" {
  ami           = data.aws_ami.this_aws_ami.id 
  instance_type = var.this_instance_type[0]              
  key_name      = var.this_key_pair          
  vpc_security_group_ids = [data.aws_security_group.default.id]

  # Optional: Tagging the instance
  tags = var.this_tag
  
  # Optional: Associate a public IP with the instance (for public access)
  associate_public_ip_address = var.this_associate_public_ip

}

#data.aws_security_group.lb_sg.attribute