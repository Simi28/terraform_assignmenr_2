# s3 resources using the simple count
resource "aws_s3_bucket" "count1" {

  count = 2

  bucket = "sameeksha-aws-bucket-${count.index}"
  
}
#s3 resources using the simple for_each
resource "aws_s3_bucket" "awsbucketcount" {
  for_each = {
    "bucket-1g" = "Sameeksha-bhadoria"
    "bucket-2h" = "shreaya-sharma"
    "bucket-3k" = "harsh-khokar"
    # Add more buckets as needed
  }

  bucket = each.key
}

#s3 resources using the count and variables
resource "aws_s3_bucket" "s3count" {
  count = var.bucket-count

  bucket = "${var.bucket-name}${count.index}"
}

#s3 resources using the for_each and variables
resource "aws_s3_bucket" "s3_buckets" {
  for_each = { for name in var.bucket_names : name => name}

  bucket = each.key
}