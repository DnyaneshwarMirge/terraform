resource "aws_instance" "this_ubuntu" {
    ami = var.this_image_id 
    disable_api_stop  = this_disable_api_stop
    disable_api_termination = var.this_disable_api_termination
    instance_type = var.this_list[3]
    key_name= var.this_list[4]
    vpc_security_group_ids = [var.this_list[5]]
    count = var.this_map.count
    tags = {
      purpose = var.this_map.purposeec2
    }  
}