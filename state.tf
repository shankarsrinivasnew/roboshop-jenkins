terraform {
  backend "s3" {
    bucket = "terraform-ss-b71"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"

  }
}
