resource "aws_s3_bucket" "bucketGRM" {
  bucket = "my-tf-bucket-clase-${terraform.workspace}"

  acl    = "private"

   versioning {
		enabled = true
	} 
}