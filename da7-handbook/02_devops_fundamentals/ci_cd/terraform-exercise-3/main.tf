#Change state to S3 bucket into your folder
#TASK upload all images from the sample folder into the bucket  #putBucket here

resource "aws_lambda_function" "example" {
  source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
  role             = aws_iam_role.lambda_role.arn
  #TODO complete resource
}

data "archive_file" "python_lambda_package" {
  #TODO zip code
}

resource "aws_s3_bucket" "your_bucket" {
  bucket = "${var.project_name}-${var.identifier}"
}