resource "aws_s3_bucket" "gazeddyw_me" {
  bucket = "gazeddyw-me-${terraform.workspace}"
  acl    = "public-read"
  policy = data.aws_iam_policy_document.gazeddyw_me_s3_bucket_policy.json

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
