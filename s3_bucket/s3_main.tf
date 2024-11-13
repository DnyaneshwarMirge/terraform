resource "aws_s3_bucket" "my_bucket" {
  bucket = "mytfmainbucketgloble5525"

  tags = {
    Name = "My bucket"
  }
}
 
resource "aws_s3_bucket_object" "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket                   # Reference the bucket created above
  key    = "ratnadeepsali05/terraform/s3_bucket/object"     # Path and name for the object in the bucket
  source = "ratnadeepsali05/terraform/s3_bucket/object"      # Local path to the file you want to upload
  acl    = "public-read"                                     # Optional: Set ACL, e.g., public-read for public access
}