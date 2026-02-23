#!/bin/bash
az group create --name CyberLabRG --location eastus
az network vnet create --resource-group CyberLabRG --name CyberLabVNet --address-prefix 10.0.0.0/16 --subnet-name WebSubnet --subnet-prefix 10.0.1.0/24
az network vnet subnet create --resource-group CyberLabRG --vnet-name CyberLabVNet --name DBSubnet --address-prefix 10.0.2.0/24
az storage account create --name cyberlabstorage --resource-group CyberLabRG --location eastus --sku Standard_LRS --kind StorageV2 --encryption-services blob
