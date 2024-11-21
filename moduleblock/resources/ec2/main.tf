# Security Group to allow HTTP access
resource "aws_security_group" "sg" {
  #name        = "sg"
  #description = "Allow HTTP traffic for Static app"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

tags = {
    Name = "sg"
  }
}



resource "aws_instance" "this_ubuntu" {
    ami = var.this_image_id    #var.this_image_id 
    disable_api_stop  = var.this_disable_api_stop  #var.this_disable_api_stop 
    disable_api_termination =  var.this_disable_api_termination  #var.this_disable_api_termination  
    instance_type = var.instance_type  #variable "instance_type"
    subnet_id =  var.this_aws_instance_subnet 
    security_groups = [aws_security_group.sg.name]
}   