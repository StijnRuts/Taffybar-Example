module Main where

import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.TaffybarPagerHints
import XMonad.Config.Azerty
import XMonad.Util.SpawnOnce

main = xmonad $ docks $ ewmh $ pagerHints $ def
  { terminal = "xterm"
  , layoutHook = avoidStruts $ layoutHook def
  , keys = \c -> azertyKeys c <> keys def c
  , startupHook = do
      spawnOnce "status-notifier-watcher"
      spawnOnce "taffybar"
      spawnOnce "nm-applet"
      spawnOnce "pa-applet"
  }
