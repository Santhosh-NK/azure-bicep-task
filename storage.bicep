resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'santhosh1508ghjk'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
