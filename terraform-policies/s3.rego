package main

deny[msg] {
        not input.resource.aws_s3_bucket.test
        msg := "aws_s3_bucket.test does not exist"
}
