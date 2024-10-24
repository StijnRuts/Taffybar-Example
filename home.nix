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

  services.status-notifier-watcher.enable = true;
  xsession.preferStatusNotifierItems = true;
  services.xembed-sni-proxy.enable = true;

  home.stateVersion = "24.05";
}
