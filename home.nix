{ config, pkgs, ... }:
{
  home.file = {
    xmonad = {
      source = ./xmonad.hs;
      target = ".config/xmonad/xmonad.hs";
    };
    taffybar = {
      source = ./taffybar.hs;
      target = ".config/taffybar/taffybar.hs";
    };
  };

  home.stateVersion = "24.05";
}
