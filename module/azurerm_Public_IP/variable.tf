
variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
    default     = "myPublicIP"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string      
}

variable "location" {
  description = "value for location of resource group"
    type        = string
}

 
