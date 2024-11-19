module "ec2" {
    source = "/home/cloudshell-user/terraform/moduleblock/resources/ec2"
    this_image_id = "ami-0dee22c13ea7a9a67"
    instance_type = "t2.micro"
    this_disable_api_stop = false
    this_disable_api_termination = false
    #this_vpc_security_group_ids = "sg-0505874879e7ce6cd"
    this_aws_instance_subnet = module.vpc.subnet_id
    key_name = "d"
    #sg_name = module.vpc.vpc_id
    #vpc_id          = module.vpc.vpc_id
    //this_aws_vpc_id = module.aws_vpc.aws_vpc_id
}

module "vpc" {
     source = "/home/cloudshell-user/terraform/moduleblock/resources/vpc"
     this_vpc_cidr_block = "12.11.0.0/16"
     this_vpc_tags = "this_vpc"
     this_subnet_pub_cidr_block = "12.11.0.0/17"
     this_subnet_pub_map_ip  = true 
     this_subnet_pub_tags = "pub_subnet"
     this_vpc_az = "ap-south-1"
}