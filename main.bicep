resource vnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: 'CyberLabVNet'
  location: 'eastus'
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'WebSubnet'
        properties: { addressPrefix: '10.0.1.0/24' }
      }
      {
        name: 'DBSubnet'
        properties: { addressPrefix: '10.0.2.0/24' }
      }
    ]
  }
}

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'cyberlabstorage'
  location: 'eastus'
  sku: { name: 'Standard_LRS' }
  kind: 'StorageV2'
  properties: {
    encryption: { services: { blob: { enabled: true } }, keySource: 'Microsoft.Storage' }
  }
}
