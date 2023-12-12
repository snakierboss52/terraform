resource "aws_kms_key" "a" {
  description             = "KMS key test"
  deletion_window_in_days = 2
}
