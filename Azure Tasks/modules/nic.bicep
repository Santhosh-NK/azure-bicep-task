@description('Enter the descriptive name')
param name string
@description('Enter the Resource Location')
param location string
@('Enter the ')
param subnetid string

resource networkInterface 'Microsoft.Network/networkInterfaces@2020-11-01' = {
  name: name
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig-az-bicep'
        properties: {
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
