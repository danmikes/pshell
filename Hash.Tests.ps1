& ./Hash.ps1

Describe "Hash" {
  Context "something" {
    It "else" {
      $one | should -be 'var'
    }
  }
}
