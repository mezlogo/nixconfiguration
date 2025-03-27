{ config, pkgs, ... }:
{
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  users.users.mezlogo.extraGroups = [ "libvirtd" ];

  environment.systemPackages = with pkgs; [
    qemu
    OVMFFull
    quickemu
    vanilla-dmz
  ];
}