{ name = "purescript-grunt"
, dependencies =
  [ "assert"
  , "console"
  , "debug"
  , "effect"
  , "ordered-collections"
  , "psci-support"
  , "strings"
  , "stringutils"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
