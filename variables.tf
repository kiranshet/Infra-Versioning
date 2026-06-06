variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "infra-versioning-state-bucket-kiran"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "key-pair-0702"
}
