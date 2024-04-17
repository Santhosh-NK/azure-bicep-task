resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'santhosh1508ghjklm'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
