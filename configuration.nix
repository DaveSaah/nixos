{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./boot.nix
      ./apps.nix
      ./users.nix
      ./desktop.nix
      ./custom_hardware.nix
      ./misc.nix
      ./services.nix
      ./shell.nix
    ];

  networking.hostName = "$HOSTNAME"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

  # add automatic garbage collection
  # nix.gc = {
  #   automatic = true;
  #   dates = "weekly";
  #   options = "--delete-older-than 7d";
  # };
}
