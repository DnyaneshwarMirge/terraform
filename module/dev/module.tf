module "ec2"{
    source = ""
    this_image_id = "ami-09b0a86a2c84101e1"
    this_disable_api_stop = false
    this_disable_api_termination = false
    instance_type = "t2.micro"
    key_name = "d"
}

module "aws_vpc" {
        source = "/home/anup/deleteafterpractice/Terraform/Module/resources/VPC"
        this_vpc_cidr_block = "192.168.0.0/16"
        this_vpc_cidr_tags = "vpc"
        this_public_cidr_block  = "192.168.0.0/17"
        this_public_map_pub = true
        this_public_tags = "public"
}