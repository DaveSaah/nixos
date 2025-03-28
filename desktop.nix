{ pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = false;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    geary
    gnome-contacts
    gnome-calendar
    gnome-maps
    evince
    gnome-console
    gnome-weather
    simple-scan
    totem
    yelp
    gnome-music
    gnome-system-monitor
    gnome-text-editor
  ];
}
