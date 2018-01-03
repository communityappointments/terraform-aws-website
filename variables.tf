variable "domain" {
  type        = "string"
  description = "The domain where to host the site. This must be the naked domain, e.g. `example.com`"
}

variable "hosted_zone_id" {
  type        = "string"
  description = "The id of the Route53 Hosted Zone where to create the DNS records"
}

variable "enable_health_check" {
  type        = "string"
  default     = false
  description = "If true, it creates a Route53 health check that monitors the www endpoint and an alarm that triggers whenever it's not reachable. Please note this comes at an extra monthly cost on your AWS account"
}

variable "health_check_alarm_sns_topics" {
  type        = "list"
  default     = []
  description = "A list of SNS topics to notify whenever the health check fails or comes back to normal"
}
