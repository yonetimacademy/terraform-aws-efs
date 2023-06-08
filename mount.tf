resource "aws_efs_mount_target" "main" {
  for_each        = { for k, v in var.subnet_ids : k => v }
  file_system_id  = aws_efs_file_system.main.id
  subnet_id       = each.value
  security_groups = [aws_security_group.main.id]
}
