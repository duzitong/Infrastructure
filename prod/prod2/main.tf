module "base" {
  source          = "../../modules/base"
  location        = "eastus"
  siteId          = "prod2"
  domainFqdn      = "jumpstart.local"
  startingAddress = "192.168.1.116"
  endingAddress   = "192.168.1.216"
  defaultGateway  = "192.168.1.1"
  dnsServers      = ["192.168.1.254"]
  adouPath        = "OU=prod2,DC=jumpstart,DC=local"
  tenant          = "aszregistration.onmicrosoft.com"
  domainServerIP  = "192.168.1.1"
  servers = [
    {
      name        = "ProdHOST3",
      ipv4Address = "192.168.1.22"
    },
    {
      name        = "ProdHOST4",
      ipv4Address = "192.168.1.23"
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
  subId                  = var.subscriptionId
  domainAdminUser        = var.domainAdminUser
  domainAdminPassword    = var.domainAdminPassword
  localAdminUser         = var.localAdminUser
  localAdminPassword     = var.localAdminPassword
  servicePrincipalId     = var.servicePrincipalId
  servicePrincipalSecret = var.servicePrincipalSecret
}
