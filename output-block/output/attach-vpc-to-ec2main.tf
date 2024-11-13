resource "aws_instance" "this_ubuntu" {
    ami = var.this_list[0] 
    #disable_api_stop  = var.this_list[1] 
    #disable_api_termination = var.this_map.termination 
    instance_type = var.this_list[3]
    key_name= var.this_list[4]
    #vpc_security_group_ids = [var.this_list[5]
    subnet_id =  aws_subnet.this_subnet_pub.id
    #count = var.this_map.count
    tags = {
      purpose = var.this_map.purposeec2
    } 
    

}   


resource "aws_vpc" "this_vpc" {
    cidr_block = var.this_vpc_cidr_block //"12.11.0.0/16"
    tags =  {
        Name = var.this_vpc_tags //"this_vpc"
    }
}

resource "aws_subnet" "this_subnet_pub" {
  vpc_id     = aws_vpc.this_vpc.id  #referedresourceblock'sProvider_referedresourceblock'sresourcetype.referedresourceblocksuniqueresourceblockname.attributeofresource
  availability_zone = "ap-south-1a"
  cidr_block = var.this_subnet_pub_cidr_block      //"12.11.0.0/17"  
  map_public_ip_on_launch = var.this_subnet_pub_map_ip //true
  tags = {
    Name = var.this_subnet_pub_tags //"pub_subnet"
  }
}


