# Resource to create buckets based on the `users_list` variable
resource "aws_s3_bucket" "my_bucket" { 
    count  = length(var.users_list)
    bucket = "my-unique-${var.users_list[count.index]}"
    force_destroy = true  # Deletes the bucket even if it contains objects
}

}

# Resource to create 3 buckets with valid names
resource "aws_s3_bucket" "bucket38" { 
    bucket = "my-unique-d-${count.index}"  # Valid lowercase bucket names
    force_destroy = true  # Deletes the bucket even if it contains objects
    count  = 3
}



variable "users_list" {
    default = ["bucket-1" , "bucket-2" , "bucket-3"]
}                #0         #1       #2
  