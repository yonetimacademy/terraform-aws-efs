# terraform-aws-efs

Cloud&Cloud made Terraform Module for AWS Provider
--
```
module "efs" {
  source         = "yonetimacademy/efs/aws"
  version        = "0.0.1"
  tenant         = var.tenant
  name           = var.name
  environment    = var.environment
  vpc_id         = var.vpc_id
  cidr_block     = var.cidr_block
  subnet_ids     = var.subnet_ids
  encryption     = true # 1
  kms_key_id     = var.efs_key_id[0]

  # EFS Configuration
  efs_name                        = "master"
  performance_mode                = "generalPurpose"  # or "maxIO"
  throughput_mode                 = "bursting"        # "provisioned" or "elastic"
  provisioned_throughput_in_mibps = null              # set only if "provisioned" throughput_mode
}
```

## Notes
1) Works better with yonetimacademy-aws-kms module.