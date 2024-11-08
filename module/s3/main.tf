resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name

  tags = {
    Owner        = var.owner
    Environment = var.environment
  }
}