resource "aws_s3_bucket" "manual_bucket" {
  # (resource arguments)
}

resource "aws_s3_bucket_versioning" "s3versioningmanual" {
  bucket = aws_s3_bucket.manual_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}