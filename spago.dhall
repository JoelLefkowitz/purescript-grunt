{ name = "grunt"
, dependencies =
  [ "assert"
  , "console"
  , "debug"
  , "effect"
  , "node-fs-aff"
  , "node-fs"
  , "ordered-collections"
  , "psci-support"
  , "strings"
  , "stringutils"
  , "test-unit"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
