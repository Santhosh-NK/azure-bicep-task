resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: 'publicip1508sn'
  location: resourceGroup().location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    
}
}
