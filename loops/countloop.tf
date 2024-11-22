resource "aws_s3_bucket" "my_bucket" { 
    count = length(var.users_list)  #3
    name = var.users_list[count.index]
}  
resource "aws_s3_bucket" "my_bucket" { 
    name = "D.${count.index}"   #neo
    count = 3 
}  


variable "users_list" {
    default = ["bucket-1" , "bucket-2" , "bucket-3"]
}                #0         #1       #2
  