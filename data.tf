provider "aws" {
  region = "eu-north-1"
}

data "aws_ssm_parameter" "latest_al2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}
