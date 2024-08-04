variable "location" {
  description = "Regiao onde os recursos serao criados na Azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da storage account na azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicacao de dados da storage accoubt"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome para o resource"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  type    = string
  default = "adrianmoraisterraform"
}

variable "container_name" {
  type    = string
  default = "container-terraform"
}