#commande pour la création d'un groupe de resource
az group create -n myResourceGroup -l eastus

#commande pour créer un role
az ad sp create-for-rbac --name "uda-app" --role Contributor --scopes  /subscriptions/0dbde5ce-f450-4e35-9a82-7f639292e16b --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"

#voir la subscription_id
az account show --query "{ subscription_id: id }"

packer build demo.json


