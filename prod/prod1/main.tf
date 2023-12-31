module "base" {
  source          = "../../modules/base"
  location        = "eastus"
  siteId          = "prod1"
  domainFqdn      = "jumpstart.local"
  startingAddress = "192.168.1.15"
  endingAddress   = "192.168.1.115"
  defaultGateway  = "192.168.1.1"
  dnsServers      = ["192.168.1.254"]
  adouPath        = "OU=prod1,DC=jumpstart,DC=local"
  tenant          = "aszregistration.onmicrosoft.com"
  domainServerIP  = "192.168.1.1"
  servers = [
    {
      name        = "AzSHOST1",
      ipv4Address = "192.168.1.12"
    },
    {
      name        = "AzSHOST2",
      ipv4Address = "192.168.1.13"
    }
  ]
  managementAdapters = ["FABRIC", "FABRIC2"]
  storageNetworks = [
    {
      name               = "Storage1Network",
      networkAdapterName = "StorageA",
      vlanId             = "711"
    },
    {
      name               = "Storage2Network",
      networkAdapterName = "StorageB",
      vlanId             = "712"
    }
  ]
  virtualHostIp = "10.0.0.6"
  dcPort        = 6985
  serverPorts = {
    "AzSHOST1" = 15985,
    "AzSHOST2" = 25985
  }
  subId                  = var.subscriptionId
  domainAdminUser        = var.domainAdminUser
  domainAdminPassword    = var.domainAdminPassword
  localAdminUser         = var.localAdminUser
  localAdminPassword     = var.localAdminPassword
  servicePrincipalId     = var.servicePrincipalId
  servicePrincipalSecret = var.servicePrincipalSecret
}
