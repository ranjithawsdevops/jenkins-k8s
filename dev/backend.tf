terraform {
	backend "s3" {
		bucket  = "abucketnov07"
		key     = "dev/terraform.tfstate"
		region  = "ap-south-1"
		encrypt = true
		dynamodb_table = "test"

	}
}
