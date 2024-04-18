param name string ='ip'
param location string = resourceGroup().location
resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: '${name}1508sn'
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    
}
}
