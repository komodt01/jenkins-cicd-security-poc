
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "secure_bucket" {
  bucket = var.bucket_name

  tags = {
    Project = "Jenkins CI/CD PoC"
  }
}
