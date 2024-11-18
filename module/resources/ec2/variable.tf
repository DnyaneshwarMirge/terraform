variable "this_image_id" {
  type        = string
  default = "ami-09b0a86a2c84101e1"
}

variable "this_disable_api_stop" {
  type        = bool
}

variable "this_disable_api_termination" {
    type = bool 
}

variable "this_count" {
    type = number 
   
}

variable "this_vpc_security_group_ids" {
    type = string 
     
}

variable "this_list" {
    type = string
     
}