package main

deny[msg] {
  not input.resource.aws_iam_user["test"]
  msg = "aws_iam_user.test does not exist"
}

deny[msg] {
  name := input.resource.aws_iam_user["test"].name
  name != "test"
  msg := "name of aws_iam_user.test is not 'test'"
}
