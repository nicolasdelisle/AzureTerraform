# information needed for terraform connect to cloud provider azure
variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}

# Variables for lookup practice
# -------------------
variable "env_settings" {
  description = "Map of environment -> instance type"
  default = {
    dev   = "t2.micro"
    qa    = "t3.small"
    stage = "t3.medium"
    prod  = "m5.large"
  }
}
 
variable "city_codes" {
  description = "Map of city -> airport IATA code"
  default = {
    Vancouver = "YVR"
    Toronto   = "YYZ"
    Montreal  = "YUL"
    Calgary   = "YYC"
  }
}
 
variable "country_currency" {
  description = "Map of country -> currency code"
  default = {
    Canada = "CAD"
    USA    = "USD"
    Mexico = "MXN"
  }
}
 
variable "request_cities" {
  description = "Cities to resolve into airport codes for exercise 8"
  default     = ["Vancouver", "Calgary", "Ottawa"]
}
# A sentinel value used to detect missing keys via lookup() in exercise 9
locals {
  sentinel_missing = "__MISSING__"
}
