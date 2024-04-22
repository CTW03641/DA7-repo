resource "aws_s3_bucket" "your_bucket" {
  bucket = "${var.project_name}-${var.identifier}"
}