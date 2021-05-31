module Grunt.Types where

import Data.Function.Uncurried (Fn2)
import Effect (Effect)
import Prelude (Unit)

newtype Grunt
  = Grunt
  { registerTask :: Fn2 String Callback (Effect Unit)
  }

newtype Task
  = Task
  { name :: String
  , callback :: Callback
  }

data Callback
  = Static (Effect Unit)
  | Dynamic (forall a. a -> Effect Unit)
