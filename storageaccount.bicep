param name string ='storage'
param location string = resourceGroup().location
resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: '${name}1508sn'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'

  }
}
