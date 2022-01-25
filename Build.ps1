# Class
class Human {
  # Property
  # [string]$name
  # [int]$age

  # Constructor
  # Human() {
  #   [Human]::new($null,$null)
  # }
  # Human ([string]$name, [int]$age)
  # {
  #   $this.name = $name
  #   $this.age = $age
  # }

  # Method
  # [void] setName($name) {
  #   $this.name = $name
  # }
  # [void] setAge($age) {
  #   $this.age = $age
  # }
}

class Man : Human {
  # Property
  [string]$name
  [int]$age

  # Constructor
  Man() {
  }

  # Method
  [Man] _name($name) {
    $this.name = $name
    return $this
  }
  [Man] _age($age) {
    $this.age = $age
    return $this
  }
  [Man] build() {
    return $this
  }
}

function private:test() {
  'Build'

  [Human] $max = [Man]::new().
    _name('max').
    _age(55).build()
  $max
  $max.
    _name('Max').
    _age(54)
  # $max._name('Rex').age(40).build()
  # $max.name
  # $max.age

  # $dux = [Human]::new('dux',3)
  # $dux
  # $dux.setName('Dux')
  # $dux.setAge(4)
  # $dux

  # $rex = [Human]::new()
  # $rex
  # $rex.setName('Rex')
  # $rex.setAge(4)
  # $rex

  # $max | Get-Member
  # $max | Get-Member -MemberType Method -Name Fill

  # $dux | Get-Member
  # $dux | Get-Member -MemberType Method -Name Fill
}

test
