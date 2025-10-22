# -------------------
# MCIT Lookup Exercises (code)

 
# MCIT Lookup Exercise 1: Fetch instance type for 'dev'
output "env_dev_instance" {
  value = lookup(var.env_settings, "aaa", "N/A")
}

# MCIT Lookup Exercise 2: Fetch instance for 'prod', default to 'default_instance' if not found
output "env_prod_instance_or_default" {
  value = lookup(var.env_settings, "prod", "default_instance")
}
 
# MCIT Lookup Exercise 3: Airport code for Toronto
output "toronto_airport_code" {
  value = lookup(var.city_codes, "Toronto")
}
 
# MCIT Lookup Exercise 4: Lookup Ottawa code with fallback "N/A"
output "ottawa_airport_code_or_na" {
  value = lookup(var.city_codes, "Ottawa", "N/A")
}
 
# MCIT Lookup Exercise 5: Currency for Canada
output "currency_canada" {
  value = lookup(var.country_currency, "Canada")
}
 
# MCIT Lookup Exercise 6: Currency for Brazil with default "Unknown"
output "currency_brazil_or_unknown" {
  value = lookup(var.country_currency, "Brazil", "Unknown")
}
 
# MCIT Lookup Exercise 7: Format a sentence using a lookup result
output "formatted_env_dev_instance" {
  value = format("Environment dev uses %s", lookup(var.env_settings, "dev", "unknown_instance"))
}
 
# MCIT Lookup Exercise 8: Use lookup() in a for-loop with default "XXX" for missing cities
output "resolved_airport_codes" {
  value = [for c in var.request_cities : lookup(var.city_codes, c, "XXX")]
}
  
# MCIT Lookup Exercise 9: Conditional check if 'stage' exists using lookup() + sentinel
output "stage_key_presence" {
  value = lookup(var.env_settings, "stage", local.sentinel_missing) != local.sentinel_missing ? "Found" : "Not Found"
}
 
# MCIT Lookup Exercise 10: Uppercase the currency for Mexico via lookup()
output "currency_mexico_upper" {
  value = upper(lookup(var.country_currency, "Mexico", "Unknown"))
}
