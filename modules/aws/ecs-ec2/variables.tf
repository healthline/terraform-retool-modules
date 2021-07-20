variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region. Defaults to `us-east-1`"
}

variable "vpc_id" {
  type        = string
  description = "Select a VPC that allows instances access to the Internet."
}

variable "subnet_ids" {
  type        = list(string)
  description = "Select at two subnets in your selected VPC."
}

variable "ssh_key_name" {
  type        = string
  description = "SSH key name for accessing EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "ECS cluster instance type. Defaults to `t2.medium`"
  default     = "t2.medium"
}

variable "max_instance_count" {
  type        = number
  description = "Max number of EC2 instances. Defaults to 10."
  default     = 10
}

variable "min_instance_count" {
  type        = number
  description = "Min/desired number of EC2 instances. Defaults to 3."
  default     = 3
}

variable "deployment_name" {
  type        = string
  description = "Name prefix for created resources. Defaults to `retool`."
  default     = "retool"
}

variable "retool_license_key" {
  type        = string
  description = "Retool license key"
  default     = "EXPIRED-LICENSE-KEY-TRIAL"
}

variable "ecs_retool_image" {
  type        = string
  description = "Container image for desired Retool version"
  default     = "tryretool/backend:2.69.18"
}

variable "ecs_task_cpu" {
  type        = number
  default     = 1024
  description = "Amount of CPU provisioned for each task. Defaults to 1024."
}

variable "ecs_task_memory" {
  type        = number
  default     = 2048
  description = "Amount of memory provisioned for each task. Defaults to 2048."
}

variable "force_deployment" {
  type        = string
  default     = false
  description = "Used to force the deployment even when the image and parameters are otherwised unchanged. Defaults to false."
}

variable "ecs_insights_enabled" {
  type        = string
  default     = "enabled"
  description = "Whether or not to enable ECS Container Insights. Defaults to `enabled`"
}

variable "rds_username" {
  type        = string
  default     = "retool"
  description = "Master username for the RDS instance. Defaults to Retool."
}

variable "rds_instance_class" {
  type        = string
  default     = "db.m4.large"
  description = "Instance class for RDS. Defaults to `db.m4.large`"
}

variable "rds_publicly_accessible" {
  type        = bool
  default     = true
  description = "Whether the RDS instance should be publicly accessible. Defaults to false."
}

variable "rds_performance_insights_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable Performance Insights for RDS. Defaults to true."
}

variable "rds_performance_insights_retention_period" {
  type        = number
  default     = 14
  description = "The time in days to retain Performance Insights for RDS. Defaults to 14."
}

variable "log_retention_in_days" {
  type        = number
  default     = 14
  description = "Number of days to retain logs in CloudWatch. Defaults to 14."
}

variable "alb_idle_timeout" {
  type        = number
  default     = 60
  description = "The time in seconds that the connection is allowed to be idle. Defaults to 60."
}

variable "cookie_insecure" {
  type        = bool
  default     = true
  description = "Whether to allow insecure cookies. Should be turned off when serving on HTTPS. Defaults to true."
}

variable "maximum_percent" {
  type        = number
  default     = 250
  description = "Maximum percentage of tasks to run during a deployment. Defaults to 250."
}

variable "minimum_healthy_percent" {
  type        = number
  default     = 50
  description = "Minimum percentage of tasks to run during a deployment. Defaults to 50."
}

variable "secret_length" {
  type        = number
  default     = 48
  description = "Length of secrets generated (e.g. ENCRYPTION_KEY, RDS_PASSWORD)"
}