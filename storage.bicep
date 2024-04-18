resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'storageaccout1508io'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
