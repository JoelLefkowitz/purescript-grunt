{ name = "purescript-grunt"
, dependencies = [ "console", "effect", "psci-support", "arrays", "test-unit", "node-buffer",  "node-fs-aff" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}