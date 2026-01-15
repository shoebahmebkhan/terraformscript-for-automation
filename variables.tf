variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

variable "key_name" {
  description = "EC2 Key pair name"
  default     = "training"
}
