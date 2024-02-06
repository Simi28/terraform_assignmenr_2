variable "bucket-count" {
  type =number
  default=3
}

variable "bucket-name" {
  default="terraform-bucket-sameeksha"
}

variable "bucket_names" {
    type=list(any)
  default = ["bucketjiaxu-1", "bucketdog-2", "buckettrue-3"]
}