resource "aws_instance" "this_inst" {
    ami = "ami-09b0a86a2c84101e1"   
    instance_type = "t4g.nano" 
    key_name = "mum-key"
    vpc_security_group_ids = ["sg-0a915226a5d9bb382"]
    count = 4  #loop 
    tags = {
      name = "ratnadeep sali"
    } 
    

}    