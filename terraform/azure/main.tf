terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    local = {
      source = "hashicorp/local"
      version  = "~> 2.0"
    }
    helm = {
      source = "hashicorp/helm"
      version  = "~> 2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source          = "../modules/azure/network"
}

module "aks" {
  source              = "../modules/azure/aks"
  env                 = var.env
  building_block      = var.building_block 
  resource_group_name = module.network.resource_group_name
}

module "storage" {
  source              = "../modules/azure/storage"
  resource_group_name = module.network.resource_group_name
}

provider "helm" {
  kubernetes {
    host                   = module.aks.kubernetes_host
    client_certificate      = module.aks.client_certificate
    client_key             = module.aks.client_key
    cluster_ca_certificate  = module.aks.cluster_ca_certificate
  }
}

module "kafka" {
  source         = "../modules/helm/kafka"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.aks]
}

module "flink" {
  source                         = "../modules/helm/flink"
  env                            = var.env
  building_block                 = var.building_block
  depends_on                     = [module.kafka]
  cloud_storage_type             = var.cloud_storage_type
  cloud_storage_key              = module.storage.azurerm_storage_account_name
  cloud_storage_secret           = module.storage.azurerm_storage_account_key
  cloud_storage_container        = module.storage.azurerm_storage_container
  schema_base_path               = "https://${module.storage.azurerm_storage_account_name}.blob.core.windows.net/sunbird-content-staging-knowlg/schemas/local"
}

module "cassandra" {
  source         = "../modules/helm/cassandra"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.aks]
}

module "neo4j" {
  source         = "../modules/helm/neo4j"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.kafka]
}

module "redis" {
  source         = "../modules/helm/redis"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.cassandra]
}

module "elasticsearch" {
  source         = "../modules/helm/elasticsearch"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.redis]
}

module "content" {
  source                    = "../modules/helm/content"
  env                       = var.env
  building_block            = var.building_block
  depends_on                = [module.elasticsearch]
  cloud_storage_type        = var.cloud_storage_type
  cloud_storage_key         = module.storage.azurerm_storage_account_name
  cloud_storage_secret      = module.storage.azurerm_storage_account_key
  cloud_storage_container   = module.storage.azurerm_storage_container
  schema_base_path          = "https://${module.storage.azurerm_storage_account_name}.blob.core.windows.net/sunbird-content-staging-knowlg/schemas/local"
}

module "taxonomy" {
  source            = "../modules/helm/taxonomy"
  env               = var.env
  building_block    = var.building_block
  depends_on        = [module.content]
  schema_base_path  = "https://${module.storage.azurerm_storage_account_name}.blob.core.windows.net/sunbird-content-staging-knowlg/schemas/local"
}

module "dial" {
  source         = "../modules/helm/dial"
  env            = var.env
  building_block = var.building_block
  depends_on     = [module.taxonomy]
}

module "search" {
  source            = "../modules/helm/search"
  env               = var.env
  building_block    = var.building_block
  depends_on        = [module.dial]
  schema_base_path  = "https://${module.storage.azurerm_storage_account_name}.blob.core.windows.net/sunbird-content-staging-knowlg/schemas/local"
}

