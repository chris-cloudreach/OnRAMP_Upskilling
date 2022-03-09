# resource "aws_s3_bucket" "my_state_bucket" {
#     bucket = "onramp-test-bucket7654122-tfstates"
 
#   tags = {
#       Name = "my_state_bucket"
#       Environment = "Test"
#   }
# }

# resource "aws_s3_bucket_versioning" "s3versioning" {
#   bucket = aws_s3_bucket.my_state_bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

resource "aws_dynamodb_table" "terraform_lock_tbl" {
  name           = "terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags           = {
    Name = "terraform-lock"
  }
}