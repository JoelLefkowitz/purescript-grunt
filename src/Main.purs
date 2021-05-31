module Main where

import Effect (Effect)
import Effect.Console (log)
import Grunt.Methods (registerTask)
import Grunt.Types (Grunt(..), Task(..), Callback(..))
import Prelude (Unit, bind, pure, ($))

main :: Grunt -> Array (Effect Unit)
main (Grunt grunt) = do
  Task task <- tasks
  pure $ registerTask (Grunt grunt) (Task task)
  where
  tasks =
    [ Task { name: "ping", callback: Static $ log "ping" }
    , Task { name: "pong", callback: Dynamic \x -> log "pong" }
    ]
