### Common Variables ###
resource_group_name = "Terraform-Cognitive-Services-Example3"
location            = "uksouth"
tags = {
  Terraform   = "True"
  Description = "Azure OpenAI Service"
  Author      = "Marcel Lupo"
  GitHub      = "https://github.com/Pwd9000-ML/terraform-azurerm-openai-service"
}

# solution specific variables
kv_config = {
  name = "openaikv1003"
  sku  = "standard"
}
keyvault_firewall_default_action             = "Deny"
keyvault_firewall_bypass                     = "AzureServices"
keyvault_firewall_allowed_ips                = ["0.0.0.0/0"] #for testing purposes only - allow all IPs
keyvault_firewall_virtual_network_subnet_ids = []

### Create OpenAI Service ###
create_openai_service                     = false
openai_account_name                       = "pwd1003"
openai_resource_group_name                = "Terraform-Exisiting-Cognitive-Services-rg"

### Create Model deployment ###
create_model_deployment = true
model_deployment = [
  {
    deployment_no = 1
    deployment_id = "pwd1003-gpt-35-turbo-16k"
    api_type      = "azure"
    model         = "gpt-35-turbo-16k"
    model_format  = "OpenAI"
    model_version = "0613"
    scale_type    = "Standard"
  },
  {
    deployment_no = 2
    deployment_id = "pwd1003-gpt-35-turbo"
    api_type      = "azure"
    model         = "gpt-35-turbo"
    model_format  = "OpenAI"
    model_version = "0613"
    scale_type    = "Standard"
  }
]