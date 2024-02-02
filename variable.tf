#creating virtual machines for two windows (windows-10 and windows-11) 


variable "rg_name" {
    type = string
    description = "resource group name"
    default = "" # put your resource name here
}

variable "rg_location" {
    type = string
    description = "resource group location"
    default = "" # put your resource group location here
}

variable "rg_NSG" {
    type = string
    description = "Network security group"
    default = "" # put your Network security group name here
}

variable "rg_VNET3" {
    type = string
    description = "virtual network"
    default = "" # put your virtual network name here
}

variable "rg_address" {
    type = string
    description = "rgaddress"
    default = [""] # put your address space here
}

variable "firstwindows10-subnet" {
    type = string
    description = "windows10subnet"
    default = "" # put your subnet name here
}

variable "address_prefixes" {
    type = string
    description = "addressprefixes"
    default = [""] # put your address prefixes here
}


variable "firstwindows11-subnet" {
    type = string
    description = "windows11subnet"
    default = "" # put your subnet name here
}

variable "address_prefixes" {
    type = string
    description = "addressprefixes"
    default = [""] # put your address prefixes here
}


variable "windows10-public-ip" {
    type = string
    description = "windows10public-ip"
    default = "" # put your public ip name here
}

variable "allocation_method" {
    type = string
    description = "allocationmethod"
    default = "" # put your allocation method here
}


variable "windows11-public-ip" {
    type = string
    description = "windows11public-ip"
    default = "" # put your public ip name here
}

variable "allocation_method" {
    type = string
    description = "allocationmethod"
    default = "" # put your allocation method here
}

variable "firstwindows10-nic" {
    type = string
    description = "firstwindows10-nic"
    default = "" # put your network interfaces name here
}

variable "firstwindows10-ip-config" {
    type = string
    description = "firstwindows10-ipconfig"
    default = "" # put your ip configuration name here
}

variable "private_ip_address_allocation" {
    type = string
    description = "private-ipaddress-allocation"
    default = "" # put your private ip address allocation here
}


variable "firstwindows11-nic" {
    type = string
    description = "firstwindows11-nic"
    default = "" # put your network interfaces name here
}

variable "firstwindows11-ip-config" {
    type = string
    description = "firstwindows11-ipconfig"
    default = "" # put your ip configuration name here
}

variable "private_ip_address_allocation" {
    type = string
    description = "private-ipaddress-allocation"
    default = "" # put your private ip address configuration here
}

variable "onewindow-vm" {
    type = string
    description = "onewindow-vm"
    default = "" # put your virtual machine name here
}

variable "size" {
    type = string
    description = "size"
    default = "" # put your size here
}

variable "admin_username" {
    type = string
    description = "admin-username"
    default = "" #put your admin user name here
}

variable "admin_paasword" {
    type = string
    description = "admin-paasword"
    default = "" # put your admin password here
}

variable "windows10-os-disk" {
    type = string
    description = "windows10-os-disk"
    default = "" # put your os disk name here
}

variable "caching" {
    type = string
    description = "caching"
    default = "" # put your caching here
}

variable "storage_account_type" {
    type = string
    description = "storage-account-type"
    default = "" # put your storage account type here
}

variable "publisher" {
    type = string
    description = "publisher"
    default = "" # put your publisher here
}

variable "offer" {
    type = string
    description = "offer"
    default = "" # put your offer here
}

variable "sku" {
    type = string
    description = "sku"
    default = "" # put your sku here
}

variable "version" {
    type = string
    description = "version"
    default = "" # put your version here
}

variable "twowindow-vm" {
    type = string
    description = "twowindow-vm"
    default = "" # put your virtual machine name here
}

variable "size" {
    type = string
    description = "size"
    default = "" # put your size here
}
variable "admin_username" {
    type = string
    description = "admin-username"
    default = "" # put your admin user name here
}

variable "admin_paasword" {
    type = string
    description = "admin-paasword"
    default = "" # put your admin paasword here
}

variable "windows11-os-disk" {
    type = string
    description = "windows11-os-disk"
    default = "" # put your os disk name here
}

variable "caching" {
    type = string
    description = "caching"
    default = "" # put your caching here
}

variable "storage_account_type" {
    type = string
    description = "storage-account-type"
    default = "" # put your storage account type here
}

variable "publisher" {
    type = string
    description = "publisher"
    default = "" # put your publisher here
}

variable "offer" {
    type = string
    description = "offer"
    default = "" # put your offer here
}

variable "sku" {
    type = string
    description = "sku"
    default = "" # put your sku here
}

variable "version" {
    type = string
    description = "version"
    default = "" # put your version here
}