terraform {
  backend "s3" {
    bucket = "nagios-project-team"
    key    = "path"
    region = "us-east-2"
    #dynamodb_table = "lock-state"
  }
}
