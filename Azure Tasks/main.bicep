@description('Enter the descriptive name')
param name string 

@description('Enter the location to provision')
param  location string

@description('Enter the admin user name ')
@minLength(8)
@maxLength(20)
param adminusername string 

@secure()
@minLength(8)
@maxLength(18)
param adminpassword string

@description('Enter the Computer name')
param computername string

var vnetname = '${name}virtualnetwork'
var nicname = '${name}interfacecard'
var vmname ='${name}virtualmachine'

module vnet 'modules/vnet.bicep'={
  name: 'virtualnetwork'
  params: {
    name:vnetname
    location:location

  }
}


module nic 'modules/nic.bicep'={
  dependsOn:[vnet]
  name: 'networkinterfacecard'
  params: {
    location: location
    name: nicname
    
    subnetid: vnet.outputs.subnetid
  }
}

module vm 'modules/vm.bicep'={
  dependsOn:[nic]
  name: vmname
  params: {
    adminpassword: adminpassword
    adminusername: adminusername
    computername: computername
   
    name: name
    networkid: nic.outputs.nic
    location:location
  }
}
