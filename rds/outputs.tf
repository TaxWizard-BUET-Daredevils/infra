
output "rds_endpoint" {
  value     = "postgresql://${aws_db_instance.example.username}:${aws_db_instance.example.password}@${aws_db_instance.example.endpoint}/${aws_db_instance.example.db_name}"
  sensitive = true
}
output "aurora-endpoint" {
  value = aws_rds_cluster.example-1.endpoint

}
