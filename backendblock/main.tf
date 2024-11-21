
#LockID
terraform {
    backend "s3" {
        bucket = "cloud38"
        key = "terraform.tfstate"
        dynamodb_table = "cbz38"
        region = "ap-south-1"
        profile = "configs"
        shared_credentials_files = ["/root/.aws/credentials"]
    }
}


resource "aws_instance" "ths_instance" {
  ami = "ami-09b0a86a2c84101e1"
  //key_name = "d"
  instance_type = "t2.micro"
  //security_groups = ["sg-02582bf615cdb71bb"]
  count = 1
  
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world this is Batc24" >> /var/www/html/index.html
    EOF
   tags = {
    Name = "first_terraform_instance"

  } 
    
}
