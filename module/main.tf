provider "aws"{
 region ="us-east-1"
}
resource "aws_dynamodb_table" "terraform_lock" {
 name = "terraform-lock"
 billing+mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

attribute {
 name = "LockID"
type = "s"
}

}

