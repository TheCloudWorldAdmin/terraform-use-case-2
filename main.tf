module "s3_bucket" {
  source = "git::https://github.com/wilshan/terraform-aws-s3.git"
  bucketname = var.bucketname
  acl = var.acl
  env = var.env
  versioning_enabled = var.versioning_enabled
}

module "lambda_func" {
  source = "git::https://github.com/wilshan/terraform-aws-lambda.git"
  function_name = var.function_name
  
  
  
