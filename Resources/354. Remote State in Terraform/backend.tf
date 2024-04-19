terraform {
    backend "s3" {
        bucket = "tf-state-98ftr"
        key    = "development/terraform_state"
        region = "eu-north-1"
    }
}