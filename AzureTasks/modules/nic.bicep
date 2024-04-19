@description('Enter the descriptive name')
param name string
@description('Enter the Resource Location')
param location string
@description('Enter the subnet id')
param subnetid string
@description('Enter the public ip address id')
param ipaddressid string

resource networkInterface 'Microsoft.Network/networkInterfaces@2020-11-01' = {
  name: name
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig-az-bicep'
        properties: {
          publicIPAddress:{
            id:ipaddressid
          }
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: subnetid
          }

        }
      }
    ]
  }
}
output nic string = networkInterface.id
