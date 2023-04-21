resource "aws_s3_bucket" "mydemo" {
    bucket = "${var.bucket_name}" 
    tags = {
      Name = "${var.bucket_nametag}"
      Environment = "${var.Environment}"
      }
}

#resource "aws_s3_bucket_acl" "mydemo_acl" {
#  bucket = aws_s3_bucket.mydemo.id
#  acl = "${var.acl_value}"   
#}

resource "aws_s3_bucket_public_access_block" "good_security" {
    bucket = aws_s3_bucket.mydemo.id
    block_public_acls  = true
    block_public_policy = true
    restrict_public_buckets = true
    ignore_public_acls = true
 }
