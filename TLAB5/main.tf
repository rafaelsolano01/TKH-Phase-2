terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}

# Unique ID generator to prevent S3 naming collisions
resource "random_id" "id" {
  byte_length = 4
}

# ==========================================================================
# STEP 2: The Financial Firewall (AWS Budget)
# ==========================================================================
resource "aws_budgets_budget" "titan_budget" {
  name              = "titan-fintech-monthly-budget"
  budget_type       = "COST"
  limit_amount      = "10.0"
  limit_unit        = "USD"
  time_period_start = "2026-01-01_00:00"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["ralph_piano@yahoo.com"] # 🔐 Updated with your email
  }
}

# ==========================================================================
# STEP 3: Secure Storage Vault (Private S3 Bucket)
# ==========================================================================
resource "aws_s3_bucket" "vault" {
  bucket        = "titan-fintech-vault-rs-${random_id.id.hex}" # 'rs' for your initials
  force_destroy = true 
}

resource "aws_s3_bucket_public_access_block" "vault_privacy" {
  bucket = aws_s3_bucket.vault.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# ==========================================================================
# STEP 4: Surgical IAM Least-Privilege Policy & Role
# ==========================================================================
resource "aws_iam_role" "ec2_vault_role" {
  name = "Titan-EC2-Vault-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "s3_put_only" {
  name        = "Titan-S3-Vault-PutOnly"
  description = "Allows surgical PutObject write access to the specific Titan Fintech vault"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:PutObject"]
        Resource = ["${aws_s3_bucket.vault.arn}/*"]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_put_policy" {
  role       = aws_iam_role.ec2_vault_role.name
  policy_arn = aws_iam_policy.s3_put_only.arn
}

# ==========================================================================
# STEP 5: Compute Layer (Ubuntu t2.micro + Instance Profile)
# ==========================================================================
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "Titan-EC2-Vault-Instance-Profile"
  role = aws_iam_role.ec2_vault_role.name
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "titan_compute" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "Titan-FinTech-Compute"
  }
}