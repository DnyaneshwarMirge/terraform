module "ec2" {
    source = "/home/cloudshell-user/terraform/moduleblock/resources/ec2"
    this_This_ami = "ami-09b0a86a2c84101e1"
    this_ec2type = "t2.micro"
    This_key  = "d"
    this_disable_api_stop = false
    this_disable_api_termination = false
    #this_vpc_security_group_ids = "sg-0505874879e7ce6cd"
    this_aws_instance_subnet = module.aws_vpc.subnet_id
    this_sg_vpc_id = module.aws_vpc.vpc_id
    //this_aws_vpc_id = module.aws_vpc.aws_vpc_id
}

module "aws_vpc" {
     source = "/home/cloudshell-user/terraform/moduleblock/resources/ec2"
     this_vpc_cidr_block = "192.168.0.0/16"
     this_vpc_tags = "this_vpc"
     this_subnet_pub_cidr_block = "192.168.0.0/17"
     this_subnet_pub_map_ip  = true 
     this_subnet_pub_tags = "pub_subnet"
     this_vpc_az = "ap-south-1"
}