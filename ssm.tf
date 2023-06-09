resource "aws_ssm_parameter" "main_id" {
  name        = "/${var.tenant}/${var.name}/${var.environment}/efs/${var.efs_name}/id"
  description = "Managed by yonetimacademy"
  type        = "SecureString"
  value       = aws_efs_file_system.main.id

  tags = {
    Name        = "${var.tenant}-${var.name}-${var.environment}-efs-${var.efs_name}-id"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "yonetimacademy"
    Terraform   = "yes"
  }
}

resource "aws_ssm_parameter" "main_dns" {
  name        = "/${var.tenant}/${var.name}/${var.environment}/efs/${var.efs_name}/dns"
  description = "Managed by yonetimacademy"
  type        = "SecureString"
  value       = aws_efs_file_system.main.dns_name

  tags = {
    Name        = "${var.tenant}-${var.name}-${var.environment}-efs-${var.efs_name}-dns"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "yonetimacademy"
    Terraform   = "yes"
  }
}
