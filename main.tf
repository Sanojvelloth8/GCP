#Resource to create dynamodb table updated
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Employee"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "EmployeeId"

  attribute {
    name = "EmployeeId"
    type = "S"
  }

  tags = {
    Name        = "Dynamo-DB-Table"
    Environment = "Dev"
  }
}