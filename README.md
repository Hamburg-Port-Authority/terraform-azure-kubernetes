# Introduction:

The module is used to deploy azure kubernetes service over terraform with a default setup (Infrastructure as Code).

> **_NOTE:_** The required providers, providers configuration and terraform version are maintained in the user's configuration and are not maintained in the modules themselves.

# Example Use of Module:

> Requirement: network module

    module "kubernetes" {

        source = "github.com/Hamburg-Port-Authority/terraform-azure-kubernetes?ref=1.0.0"

        resource_group_name          = module.rg.main.name
        virtual_network_id           = module.network.virtual_network_id
        virtual_network_name         = module.network.virtual_network_name

    }
