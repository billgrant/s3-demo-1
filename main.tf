# change the module name if required
module "s3_pov" {
  # change org-name to your organization name
  source  = "app.terraform.io/billgrant/s3-pov/aws"
  version = "0.0.2"
  # change tag names if desired
  environment = "dev"
  name        = "test"
}

output "bucket_id" {
  value       = module.s3_pov.bucket_id
  description = "The ID of the S3 bucket"
}

output "bucket_arn" {
  value       = module.s3_pov.bucket_arn
  description = "The ARN of the S3 bucket"
}

module "s3_pov2" {
  # change org-name to your organization name
  source  = "app.terraform.io/billgrant/s3-pov/aws"
  version = "0.0.2"
  # change tag names if desired
  environment = "dev2"
  name        = "test2"
}

output "bucket_id2" {
  value       = module.s3_pov2.bucket_id
  description = "The ID of the S3 bucket"
}

output "bucket_arn2" {
  value       = module.s3_pov2.bucket_arn
  description = "The ARN of the S3 bucket"
}
