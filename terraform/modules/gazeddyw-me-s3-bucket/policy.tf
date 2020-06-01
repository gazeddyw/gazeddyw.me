data "aws_iam_policy_document" "gazeddyw_me_s3_bucket_policy" {
  statement {
    actions = [
      "s3:GetObject"
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      "arn:aws:s3:::gazeddyw-me/*",
    ]
  }
}
