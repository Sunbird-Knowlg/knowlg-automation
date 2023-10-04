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
In order to complete the installation, please run the below steps in the same terminal.

```
cd terraform/local
terraform init
terraform plan
terraform apply
```

## Post-Installation Steps
Access a specific pod using kubectl (replace `<podname>` and `<namespace>` with your actual pod name and namespace):

```
kubectl exec -it <podname> -n <namespace> -- /bin/sh
```

**Step 1:** SSH into the **Neo4j** pod and execute following commands:

```
cd bin/cypher-shell
```
```
CREATE CONSTRAINT ON (domain:domain) ASSERT domain.IL_UNIQUE_ID IS UNIQUE;
CREATE INDEX ON :domain(IL_FUNC_OBJECT_TYPE);
CREATE INDEX ON :domain(IL_SYS_NODE_TYPE)
```

**Step 2:** SSH into the **Taxonomy-Service** pod, create Object-Category and Object-Category-Definition. Please see [Object Category APIs](https://knowlg.sunbird.org/learn/product-and-developer-guide/taxonomy-and-tagging/object-category-service/apis) for reference.

**Step 3:** SSH into the **Content-Service** pod, create License and Channel. Please see [License APIs](https://knowlg.sunbird.org/learn/product-and-developer-guide/content-service/license-service/apis) and [Channel APIs](https://knowlg.sunbird.org/learn/product-and-developer-guide/content-service/channel-service/apis) for reference.

**Step 4:** SSH into the **Taxonomy-Service** pod, create Framework,Categories and Terms. Please see [Framework APIs](https://knowlg.sunbird.org/learn/product-and-developer-guide/taxonomy-and-tagging/framework-service/apis) for reference. 
