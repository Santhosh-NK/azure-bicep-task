
param name string 
param location string = resourceGroup().location

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
   name: name
    location: location
       properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [{

      name: 'Subnet-A'
      properties: {
        addressPrefix: '10.0.0.0/24'

      }
    }

    ]
  } }
output subnetid string = virtualNetwork.properties.subnets[0].id
