module "ec2"{
    source = ""
    this_image_id = "ami-09b0a86a2c84101e1"
    this_disable_api_stop = false
    this_disable_api_termination = false
    instance_type = "t2.micro"
    key_name = "d"
}

module "aws_vpc" {
        source = ""
        this_vpc_cidr_block = "12.11.0.0/16"
        this_vpc_tags = "this_vpc"
        this_subnet_pub_cidr_block  = "12.11.0.0/17"
        this_subnet_pub_map_ip = true
        this_public_tags = "public"
}