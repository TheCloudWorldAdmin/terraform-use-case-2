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
  lambda_handler = var.lambda_handler
  runtime = var.runtime
  lambda_execution_role = var.lambda_execution_role
  s3_bucket = var.bucketname
  s3_key = var.s3_key
  layer_runtime = var.layer_runtime
  cwrulename = var.cwrulename
  event_bucket_name = var.event_bucket_name
  event_type = var.event_type
  statement_id1 = var.statement_id1
  action1 = var.action1
  principle1 = var.principle1
  source_arn = module.s3_bucket.arn
}
  
  
  
  
