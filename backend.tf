terraform {
  backend "s3" {
    bucket = "nagios-project-nm"
    key    = "path"
    region = "us-east-1"
    #dynamodb_table = "lock-state"
  }
}