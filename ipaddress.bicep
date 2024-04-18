param name string ='publicip'
param location string = resourceGroup().location
resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: '${name}${uniqueString(resourceGroup().id)}'
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    
}
}
