provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "tf_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "TerraformBucket"
    Env  = "Dev"
  }
}

resource "aws_iam_user" "dev_user" {
  name = "terraform-dev-user"
}

resource "aws_iam_user_policy" "s3_policy" {
  name = "s3-access"
  user = aws_iam_user.dev_user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:*"],
      "Resource": ["*"]
    }
  ]
}
EOF
}
