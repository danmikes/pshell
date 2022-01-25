. ./Address.ps1
Import-Module .\Address.ps1 -Force -PassThru -Verbose

class Person {
  [string] $name
  [Address] $address
}

$rex = [Person]::new()
$rex.name = 'Rex'
$rex

$addressRex = [Address]::new()
$addressRex.street = 'street'
$addressRex.house = 88
$addressRex.city = 'city'
$addressRex

$rex.address = [Address]::new()
$rex.address = $addressRex

$rex
