param name string 
//param  location string
param adminusername string 
@secure()
param adminpassword string
param computername string
param networkid string
param  location string= resourceGroup().location




resource vm 'Microsoft.Compute/virtualMachines@2021-03-01' = {
  name: name
  location: location
    properties: {
    hardwareProfile: {
      vmSize: 'Standard_DS1_v2'
    }
    osProfile: {
      computerName: computername
      adminUsername: adminusername
      adminPassword: adminpassword
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2019-Datacenter'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: 'Standard_LRS'
        }
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id:networkid
        }
      ]
    }
  }
}
