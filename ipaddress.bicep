resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: 'ipaddress1508pn'
  location: resourceGroup().location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    
}
}
