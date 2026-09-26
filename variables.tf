variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "Central India"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
  default     = "azureadmin"
}
variable "alert_email" {
  description = "Email address for Azure Monitor alerts"
  type        = string
}