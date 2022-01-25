$one = "var"
$two = "ext"
$twin = 'twin1'
$hash = [ordered] @{
  twin = 'twin2'
  single1 = 'single'
  double1 = "double"
  single2 = 'single<first><second>single'
  double2 = "double<first><second>double"
  literal1 = '"literal-1"'
  literal2 = {"literal-2"}
  var = "one-$($one)-two"
  val = "$one-$two"
  true = $true
  int = 8
  list  =  [ordered] @{
    first = "first"
    second = "second"
  }
}

function test() {
  $hash
  $hash.single1
  $hash.list.first
  $hash.twin
  $twin
}

test
