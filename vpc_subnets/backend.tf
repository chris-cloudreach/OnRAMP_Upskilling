terraform {
  backend "s3"{
      bucket = "onramp-test-bucket7654122-tfstates"
      key = "upskilling/terraform.tfstate"
      dynamodb_table = "terraform-lock"
  }
}