output "bucket_name" {
  value = aws_s3_bucket.tf_bucket.bucket
}

output "iam_user" {
  value = aws_iam_user.dev_user.name
}
