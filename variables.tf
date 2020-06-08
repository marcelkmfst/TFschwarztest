# general variables
variable "location" {
    type = string
    description = "Azure location for the Deployment"
    default = "West Europe"
}


variable "resourcegroupname" {
    description = "Name of the Resource Group"
    default = "RG-TestDeployment"
}

variable "vnetaddressrange" {
    type = list
    default = ["192.168.0.0/16"]
    description = "The adressrange for the VNET"
}

variable "vnetname" {
    description = "Name of the VNET"
    default = "VNETTEST01"
}


variable "subnetname" {
    description = "Name of the Subnet"
}

variable "subnetrange" {
    type = list
    default = ["192.168.1.0/24"]
    description = "The adressrange for the VNET"
}
