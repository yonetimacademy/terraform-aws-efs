resource "aws_efs_backup_policy" "policy" {
  file_system_id = aws_efs_file_system.main.id

  backup_policy {
    status = var.backup_policy
  }
}