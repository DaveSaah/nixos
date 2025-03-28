{ pkgs, ... }:

{
  # add docker
  virtualisation.docker = {
    enable = true;
    rootless.enable = true;
    rootless.setSocketVariable = true;
    daemon.settings = {
      data-root = "$HOME/docker";
    };
  };

  # virt manager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "$USER" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # hyprland
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  programs.hyprland.withUWSM = true;

  # system packages
  environment.systemPackages = with pkgs; [
    # tools
    vim
    wget
    neovim
    git
    alacritty
    btop
    curl
    unzip
    zip
    gnumake
    ripgrep
    docker
    fd
    fzf
    mpv
    tmux
    lazygit
    lazydocker
    wl-clipboard
    direnv
    keepassxc
    gnupg
    gh
    goreleaser
    fastfetch
    air
    tldr
    ghc
    tree
    ytfzf
    yt-dlp
    ani-cli
    rofi-wayland
    swaynotificationcenter
    grimblast
    brightnessctl
    playerctl
    waybar
    jq

    # languages
    lua51Packages.lua
    lua51Packages.luarocks
    go
    nodejs_23
    gcc9
    gnat14
    cargo
  ];
}
