variable "s3_bucket_name" {
  type = map

  default = {
    dev  = "millagewraiths-dev.club"
    prod = "millagewraiths.club"
  }
}
