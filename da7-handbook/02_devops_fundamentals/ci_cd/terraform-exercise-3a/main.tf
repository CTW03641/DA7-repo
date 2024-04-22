module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "7.2.5"
  policy  = aws_iam_policy.lambda_policy.arn
  #TODO complete module
}

resource "aws_s3_bucket" "your_bucket" {
  bucket = "${var.project_name}-${var.identifier}"
}

# resource "aws_iam_policy" "lambda_policy" {
#   name   = "${local.prefix}_lambda_module_policy"
#   policy = jsonencode({
#     Version   = "2012-10-17"
#     Statement = [
#       {
#         Effect = "Allow"
#         Action = [
#           "s3:*",
#         ]
#         Resource = ["*"]
#       }
#     ]
#   })
# }

resource "aws_iam_policy" "lambda_policy" {
  name   = "${local.prefix}_lambda_module_policy"
  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "s3:GetObject",     // Allows reading objects from S3 buckets
          "s3:PutObject",     // Allows writing objects to S3 buckets
          // Add additional actions for write operations if needed
        ]
        Resource = ["*"]      // Allows access to all resources in S3 buckets
      }
    ]
  })
}
