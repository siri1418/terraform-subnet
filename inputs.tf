variable "resourcegroup_details" {
  type = object({
    name     = string
    location = string
  })
}
variable "my_vnet_details" {
  type = object({
    name          = string
    address_space = string
  })
}
variable "my_subnet1" {
  type = object({
    name             = string
    address_prefixes = string
  })

}