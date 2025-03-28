{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.bytes = {
    isNormalUser = true;
    description = "$USER";
    extraGroups = [ "networkmanager" "wheel" "docker" "video" ];
    packages = with pkgs; [
      # applications
      thunderbird
      obsidian
      zotero
      google-chrome
      vlc
      calibre
      kdePackages.okular
      beekeeper-studio
      insomnia
      bleachbit
      stacer
      libreoffice-qt6-fresh
      obs-studio
      obs-studio-plugins.obs-vaapi

      # gnome customisations
      gnome-tweaks
      gnomeExtensions.blur-my-shell
      gnomeExtensions.gsconnect
      gnomeExtensions.just-perfection
    ];
  };

  # set user shell
  users.defaultUserShell = pkgs.zsh;
}
