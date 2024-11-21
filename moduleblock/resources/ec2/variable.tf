variable "This_key" {
    type = string   
}


variable "This_ami" {
     type = string    
}
variable "this_aws_vpc_id" {
    type = string
}

variable "ec2_vpc_id" {
  type = string
} 


variable "this_image_id" {
  type        = string
}




variable "this_ec2type" {
    type = string
     
}

variable "this_disable_api_stop" {
     type = bool

}

variable "this_disable_api_termination" {
  type = bool

}

variable "this_aws_instance_subnet" {
   type = string

}