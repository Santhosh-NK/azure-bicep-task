resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'santhosh1508'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
