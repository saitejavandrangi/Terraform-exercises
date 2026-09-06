output "s3_bucket_id" {
  description = "The name (id) of the bucket"
  value       = aws_s3_bucket.bucket_data.id
}
output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket_data.arn
}


