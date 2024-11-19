variable "this_image_id" {
  type        = string
}

variable "this_disable_api_stop" {
  type        = bool
}

variable "this_disable_api_termination" {
    type = bool 
}

variable "instance_type" {
  type        = string
}

variable "key_name" {
  type        = string
}
variable "this_aws_instance_subnet" {
   type = string
}
variable "vpc_id" {
  type        = string
}