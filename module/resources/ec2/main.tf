resource "aws_instance" "this_ubuntu" {
    ami = var.this_image_id 
    disable_api_stop  = var.this_disable_api_stop
    disable_api_termination = var.this_disable_api_termination
    instance_type = var.instance_type
    key_name= var.key_name
    #vpc_security_group_ids = [var.this_list[5]]
    #count = var.this_map.count 
}