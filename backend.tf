terraform {
  backend "s3" {
    bucket  = "newstateterraform"
    key     = "infrastucture/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true

  }
}
