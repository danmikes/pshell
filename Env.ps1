enum Envs {
  azure
  local
  npo
  prd
  tst
}

enum CAs {
  rootca
  winca
}

class Env {
  [Envs] $env
  [CAs] $ca
  [string] $dirBase
  [HashTable] $test
  [HashTable] $file
  [HashTAble] $camain

  Env([Envs] $env, [CAs] $ca) {
    $this.env = $env
    $this.ca = $ca

    $this.dirBase = '.'
    $this.test = $this.setTest()
    $this.file = $this.setFile()
    $this.camain = $this.setcamain()
  }

   [HashTable] setTest() {
    return @{
      one = 'one'
      two = 'two'
    }
  }

  [HashTable] setFile() {
    return @{
      CAPolicy = "$($this.dirBase)\CAPolicy.inf"
    }
  }

  [HashTable] setcamain() {
    switch($this.ca) {
      ([CAs]::rootca) {
        return @{
          name = 'rootca'
          catype = 'standalone'
        }
      }
    }
    return $null
  }
}

$list = [System.Collections.ArrayList]::new()

$env1 = [Env]::new([Envs]::local, [CAs]::rootca)
$list.add($env1)
# $env1
# $env1.test
# $env1.file
$env1.camain
# $env1.env
# $env1.ca

# $env2 = [Env]::new([Envs]::tst, [CAs]::rootca)
# $list.add($env2)

# $env3 = [Env]::new([Envs]::local, [CAs]::winca)
# $list.add($env3)

# $env4 = [Env]::new([Envs]::tst, [CAs]::winca)
# $list.add($env4)

# $list
