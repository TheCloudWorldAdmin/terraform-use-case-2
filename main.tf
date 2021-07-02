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
  s3_bucket = var.s3_bucket
  s3_key = var.s3_key
  cwrulename = var.cwrulename
  schedule = var.schedule
  target_id = var.target_id
  statement_id2 = var.statement_id2
  action2 = var.action2
  principle2 = var.principle2
  event_bucket_name = var.event_bucket_name
  event_type = var.event_type
  prefix = var.prefix
  suffix = var.suffix
  statement_id1 = var.statement_id1
  action1 = var.action1
  principle1 = var.principle1
  source_arn = var.source_arn
}
  
  
  
  
