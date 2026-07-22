terraform {
  backend "s3" {
    bucket         = "vdp-terraform-state"
    key            = "fivetran/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "vdp-terraform-locks-prod"
  }
}

provider "fivetran" {
  api_key    = var.fivetran_api_key
  api_secret = var.fivetran_api_secret
}

variable "fivetran_api_key" {}
variable "fivetran_api_secret" { sensitive = true }
