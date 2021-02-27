module Grunt.Methods where

import Data.Function.Uncurried (runFn2)
import Effect (Effect)
import Grunt.Types (Grunt(..), Task(..))
import Prelude (Unit)

registerTask :: Grunt -> Task -> Effect Unit
registerTask (Grunt grunt) (Task task) = runFn2 grunt.registerTask task.name task.callback
