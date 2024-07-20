terraform {
    required_version = ">= 1.3.0"

    required_providers {
        aws = {
            version = "1.0"
            source = "hashicorp/aws"           
        }

        # mais providers se quiser
        
        # azurerm = {
            # version = "2.0"
            # source = "hashicorp/azurerm"
        # }
    }

    # backend
}