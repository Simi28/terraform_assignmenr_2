#output of bucket name using count
 output "created_bucket_names" {
  value = aws_s3_bucket.s3count[*].bucket
}

#output of bucket name using for_each
output "created_bucket_info" {
  value = { for key, value in aws_s3_bucket.s3_buckets : key => value.id }
}