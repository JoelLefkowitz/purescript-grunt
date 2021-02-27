module Test.Main where

import Prelude

import Test.Unit (suite, test, timeout)
import Test.Unit.Main (runTest)
import Test.Unit.Assert as Assert

import Node.FS.Aff as FS
import Node.Encoding (Encoding(..))

main = runTest do
  suite "Gruntfile" do
    test "Read Gruntfile" do
      timeout 100 $ do
        file2Contents <- FS.readTextFile UTF8 "test/Gruntfile.js"
        Assert.equal "\n" file2Contents