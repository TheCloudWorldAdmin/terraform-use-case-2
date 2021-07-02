variable "region_name" {
  type = string
  default = "us-east-1"
}
variable "bucketname" {
  type = string
  default = "wilshan-use-case"
}
variable "acl" {
  type = string
  default = "public-read-write"
}
variable "env" {
  type = string
  default = "prod"
}
variable "versioning_enabled" {
  type = bool
  default = true
}
variable "function_name" {
  type = string
  default = "lambda_function"
}
variable "lambda_handler" {
  type = string
  default = "lambda_function.lambda_handler"
}
variable "runtime" {
  type = string
  default = "python3.8"
}
variable "lambda_execution_role" {
  type = string
  default = "arn:aws:iam::872019428947:role/lambda_role"
}
variable "s3_key" {
  type = string
  default = "lambda_function.zip"
}
variable "cwrulename" {
  type = string
  default = "myRule"
}
variable "event_bucket_name" {
  type = string
  default = "event_bucket"
}
variable "event_type" {
  type = string
  default = "s3:ObjectCreated:*"
}
#variable "prefix" {
#  type = 
#}
#variable "suffix" {}
variable "statement_id1" {
  type = string
  default = "AllowS3Invoke"
}
variable "action1" {
  type = string
  default = "lambda:InvokeFunction"
}
variable "principle1" {
  type = string
  default = "s3.amazonaws.com"
}

variable "layer_runtime" {
  type = string
  default = "python3.8"
}

variable "lambda_layer_name" {
  type = string
  default = "layer_name"
}
