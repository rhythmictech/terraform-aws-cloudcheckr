resource "aws_s3_bucket" "billing_bucket" {
  bucket = "${local.account_id}-${var.region}-billing"
  acl    = "private"

  tags = {
    Namespace = var.namespace
    Owner     = var.owner
  }

  versioning {
    enabled = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "billing_block_public_access" {
  bucket                  = aws_s3_bucket.billing_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "cur_bucket" {
  bucket = "${local.account_id}-${var.region}-cur"
  acl    = "private"

  tags = {
    Namespace = var.namespace
    Owner     = var.owner
  }

  versioning {
    enabled = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "cur_block_public_access" {
  bucket                  = aws_s3_bucket.cur_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "cloudtrail_bucket" {
  bucket = "${local.account_id}-${var.region}-cloudtrail"
  acl    = "private"

  tags = {
    Namespace = var.namespace
    Owner     = var.owner
  }

  versioning {
    enabled = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "cloudtrail_block_public_access" {
  bucket                  = aws_s3_bucket.cloudtrail_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

