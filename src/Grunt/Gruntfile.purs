module Grunt.Gruntfile where


import Effect (Effect)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (writeTextFile)
import Node.Path (FilePath)
import Prelude (Unit)

writeGruntfile :: FilePath -> Effect Unit
writeGruntfile filePath = writeTextFile UTF8 filePath gruntImport

  where
    gruntImport = "module.exports = require(\"dist/Gruntfile.js\").main"
