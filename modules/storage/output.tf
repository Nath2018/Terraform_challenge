output "bucket_id" {
    value = aws_s3_bucket.s3_bucket.id
}
output "bucket_name" {
    value = aws_s3_bucket.s3_bucket.bucket
}
output "bucket_arn" {
    value = aws_s3_bucket.s3_bucket.arn
}
output "bucket_tags" {
    value = aws_s3_bucket.s3_bucket.tags
}