resource "aws_instance" "this_aws_instance" {
    for_each = toset(var.imageid)
    ami = each.value
    #vpc_security_group_ids = ["sg-032e1a4a1685a03be"]
    #key_name = "delete_oregon_anup"
    instance_type = "t3.medium"
    
}   

resource "aws_iam_user" "main_user"{
    for_each = toset(var.main_user_name)
    name = each.value
}

variable "main_user_name" {
    type = list(string)
   
    default = ["dev1","dev2","dev3"]
}

variable "imageid" {
    type = list(string)
    default = ["ami-0aebec83a182ea7ea","ami-00a6b23a4dd325f30","ami-0dee22c13ea7a9a6"]

}

output "aws_ec2" {
  value = [
    for instance in var.imageid:
        aws_instance.this_aws_instance[instance].public_ip
  ]
}
