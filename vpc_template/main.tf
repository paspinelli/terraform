terraform {
  backend "s3" {
    bucket         = "sec-terraform-exercise1"
    key            = "terraform123.tfstate"
    region         = "eu-west-1"
  }
}  

provider "aws" {
  region  = "eu-west-1"
  version = "~> 4.0"
  #access_key = "AKIAYKNPINCOSCM4OK6Q"
  #secret_key = "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"

}


