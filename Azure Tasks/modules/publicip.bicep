param name string 
param location string
resource publicip 'Microsoft.Network/publicIPAddresses@2023-05-01'={
  name: name
  location: location
  properties:{
    publicIPAllocationMethod:'Dynamic'
  }
}
output ipaddressid string = publicip.id
