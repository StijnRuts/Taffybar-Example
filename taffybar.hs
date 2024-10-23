module Main where

import Data.Default (def)
import System.Taffybar
import System.Taffybar.Widget.Workspaces
import System.Taffybar.Widget.SimpleClock
import System.Taffybar.Widget.SNITray
import System.Taffybar.SimpleConfig

main :: IO ()
main = simpleTaffybar $ def
  { startWidgets = [ workspacesNew def ]
  , endWidgets =
    [ textClockNewWith def
    , sniTrayThatStartsWatcherEvenThoughThisIsABadWayToDoIt
    , sniTrayNew
    ]
  }
