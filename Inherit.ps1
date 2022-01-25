. .\Mod.ps1

class AllGlass {
  # Properties
  [int]$Size
  [int]$CurrentAmount

  # Constructors
  AllGlass() {
    [AllGlass]::new($null,$null)
  }
  AllGlass ([int]$Size, [int]$Amount)
  {
    $this.Size = $Size
    $this.CurrentAmount = $Amount
  }

  # Methods
  [Boolean] Fill ([int]$volume){
    return $null
  }

  [Boolean] Drink ([int]$amount){
    return $null
  }
  [void] mod(){
    Write-Host 'parent'
  }
}

class OneGlass : AllGlass {
  [String]$Name
 
  # Constructors
  OneGlass () {
    $this.Size = 6
    $this.CurrentAmount = 0
    $this.Name = "My glass"
  }
  # Methods
  [void] Fill ([int]$volume, [string]$Warning)
  {
    if ($this.currentAmount + $volume -le $this.Size)
    {
      $this.CurrentAmount += $volume
    }
    else
    {
      Write-Warning $Warning
    }
  }
  [void] mod($text) {
    Write-Host $text
  }
}

function private:test() {
  'Inherit'

  # [AllGlass] $aGlass = [OneGlass]::new()
  # $aGlass | Get-Member
  # $aGlass
  # $aGlass | Get-Member -MemberType Method -Name Fill
  # $aGlass.Fill(9, "Oops! Too much")
  # $aGlass.mod()
  # $aGlass.mod('child')
  # [Mod]::textToHash($text)

  $manyGlass = [AllGlass]::new
  $manyGlass
}

test
