resource "aws_instance" "this_ubuntu" {

    ami = "ami-0dee22c13ea7a9a67" 
    disable_api_stop  = true 
    disable_api_termination = true  
    instance_type = "t2.micro" 
    key_name = "dp"
    count = 4  #loop 
    tags = {
      purpose = "jenkins server"
    } 
    

} 