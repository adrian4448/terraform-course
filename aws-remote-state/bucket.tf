resource "aws_s3_bucket" "bucket_remote_state" {
  bucket = "admorais-curso-terraform-remote-state"
}

resource "aws_s3_bucket_versioning" "bucket_remote_state_versioning" {
  bucket = aws_s3_bucket.bucket_remote_state.id

  versioning_configuration {
    status = "Enabled"
  }
}