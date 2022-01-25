# . ./Env.ps1

Describe '[Env]' {
  Context 'newEnv()' {
    It '[Env]::new()' {
      $env1 = [Env]::new([Envs]::local, [CAs]::rootca)
      $env1.ca | Should -Be 'rootca'
    }

    It '[Env]::new()' {
      { [Env]::new([Envs]::dev, [CAs]::rootca) } | Should -Throw
    }
  }
}