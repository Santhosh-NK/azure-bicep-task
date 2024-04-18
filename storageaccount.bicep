param name string ='storageacccount'
param location string = resourceGroup().location
resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: '${name}${uniqueString(resourceGroup().id)}}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
