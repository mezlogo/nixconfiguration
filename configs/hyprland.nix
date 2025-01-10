{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    kitty
    alacritty
    wofi
    waybar
    brightnessctl
    nwg-look
    #qt5ct
    #qt6ct
    networkmanagerapplet
    slurp
    grim
    wl-clipboard
    cliphist
    pavucontrol
    keepassxc
    helvum
    zsh
    #antidote
    tmux
    stow
    fzf
    jq
    bat
    ripgrep
    fd
    autojump
  ];
  
  environment.sessionVariables = rec {
    TERM = "kitty";
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";

    XDG_BIN_HOME = "$HOME/.local/bin";

    PATH = [ 
      "${XDG_BIN_HOME}"
    ];
  };
  
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.regreet.enable = true;
  
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  
  services.postgresql = {
    enable = true;
    settings.port = 15432;
  };

}
