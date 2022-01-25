enum Names {
  Dan
  Max
}

class Static {
  static family([Names] $name) {
    $family = 'Mikes'
    write-host "$name $family"
  }

  [int] static age() {
    $age = 40
    return $age
  }
}

function private:test() {
  'Static'

  [Static]::family('Dan')
  [Static]::age()

  [Static]::family([Names]::Max)
  [Static]::age()
}

test
