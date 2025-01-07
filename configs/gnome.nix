{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.appindicator
  ];
  
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
}