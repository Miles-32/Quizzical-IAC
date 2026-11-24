variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "project_name" {
  type    = string
  default = "quizzical"
}