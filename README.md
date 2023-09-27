# Knowlg Installation

### Prerequisites:
1. Install terragrunt. Please see [Install Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/) for reference.

## Azure
### Prerequisites:
1. Log into your cloud environment in your terminal. Please see [Sign in with Azure CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli) for reference.
```
az login
```
2. Create a storage account and export the below variables in your terminal. Please see [Create a storage container](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?toc=/azure/storage/blobs/toc.json) for reference. Export the below variables in your terminal session
```
export AZURE_TERRAFORM_BACKEND_RG=myregion
export AZURE_TERRAFORM_BACKEND_STORAGE_ACCOUNT=mystorage
export AZURE_TERRAFORM_BACKEND_CONTAINER=mycontainer
```
### Steps:
In order to complete the installation, please run the below steps in the same terminal.
```
cd terraform/azure
terragrunt init
terragrunt plan
terragrunt apply
```

## Local
### Prerequisites:
1. Install Terraform. Please see [Install Terraform](https://developer.hashicorp.com/terraform/downloads) for reference.

### Steps:
Navigate to repository path `knowlg-automation/terraform`

```
cd local
terraform init
terraform plan
terraform apply
```
