resource "aws_iam_user" "person-1" { 
    count = length(var.users_list)  #3
    name = var.users_list[count.index]
}  
resource "aws_iam_user" "person-2" { 
    name = "D.${count.index}"   #neo
    count = 3 
}  


variable "users_list" {
    default = ["user1" , "user2" , "user3"]
}                #0         #1       #2
  