terraform {
    backend "s3" {
        bucket = "aula-03-eriktonon"
        key    = "terraform.tfstate"
        region = "us-east-1"
    }
}
