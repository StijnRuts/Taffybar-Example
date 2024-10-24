{ config, pkgs, ... }:
{
  services.xserver.enable = true;

  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
  };

  environment.systemPackages = with pkgs; [
    xterm
    dmenu
    taffybar
    haskellPackages.status-notifier-item
    networkmanagerapplet
    pa_applet
  ];
}
