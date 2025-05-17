variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for website hosting"
  type        = string
  default     = "nextjs-new-app-website"
}