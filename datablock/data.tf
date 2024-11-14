data "aws_ami" "this_aws_ami" {
    name_regex       = "ami_use"
      filter {
    name   = "name"
    values = ["ami_use"]
    }

}

data "aws_security_group" "default" {
  name = "default"  #var.vpc_security_group_ids[2]
}