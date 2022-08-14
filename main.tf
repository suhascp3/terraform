module "create_s3_backend" {
  source = "./modules/create-s3"
  bucket_name = var.root_bucket_name
}

module "create_dynamodb_locking" {
  source = "./modules/create-dynamodb"
  hash_key = var.root_hash_key
  dynamodb_name = var.root_dynamodb_name
}
