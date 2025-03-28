{ ... }:

{
  # firewall
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 3000 ];
    allowedTCPPortRanges = [
      { from = 1714; to = 1764; }
    ];

    allowedUDPPorts = [ 80 443 3000 ];
    allowedUDPPortRanges = [
      { from = 1714; to = 1764; }
    ];
  };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # hypridle
  services.hypridle.enable = true;
}
