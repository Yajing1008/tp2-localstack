output "bucket_name" {
  value = aws_s3_bucket.tp_bucket.bucket
}

output "instance_id" {
  value = aws_instance.tp_instance.id
}
