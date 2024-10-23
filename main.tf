# change the module name if required
module "s3_pov" {
  # change org-name to your organization name
  source  = "app.terraform.io/billgrant/s3-demo/aws"
  version = "1.0.2"
  # change tag names if desired
  environment = "prod"
  name        = "demo-bucket"
}

output "bucket_id" {
  value       = module.s3_pov.bucket_id
  description = "The ID of the S3 bucket"
}

output "bucket_arn" {
  value       = module.s3_pov.bucket_arn
  description = "The ARN of the S3 bucket"
}
