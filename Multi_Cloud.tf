provider "aws" {
  access_key = "my-access-key"
  secret_key = "my-secret-key"
  region     = "us-east-1"
}

provider "azurerm" {
  subscription_id = "my-sub-id"
  client_id       = "my-client-id"
  client_secret   = "my-client-secret"
  tenant_id       = "my-tenant-id"
}

resource "aws_instance" "multi-cloud-1" {
  ami           = "ami-id"
  instance_type = "t2.micro"
}

resource "azurerm_virtual_machine" "multi-cloud-1" {
  name     = "my-first-vm"
  location = "useast"
}
