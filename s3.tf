resource "aws_s3_bucket" "state_bucket" {
  bucket = "terraform-s3-state-sample-something"
  acl    = "private"

  tags = {
    TFSTATE = "StateBucketTagName"
    Owner   = var.owner
  }
}