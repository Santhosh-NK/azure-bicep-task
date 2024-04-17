resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: 'publicip1508snr'
  location: resourceGroup().location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    
}
}
