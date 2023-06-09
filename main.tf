resource "aws_efs_file_system" "main" {
  encrypted                       = (var.encryption == true) ? true : false
  kms_key_id                      = (var.encryption == true) ? var.kms_key_id : null
  performance_mode                = var.performance_mode
  throughput_mode                 = var.throughput_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps

  tags = {
    Name        = "${var.tenant}-${var.name}-${var.efs_name}-${var.environment}"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "yonetimacademy"
    Terraform   = "yes"
  }
}