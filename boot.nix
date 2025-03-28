# boot configurations

{ ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # use RAM more
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

  fileSystems."/mnt/storage" = {
    device = "/dev/disk/by-uuid/66028fcb-2c14-426b-8ade-31e3d6964618";
    fsType = "ext4";
  };
}
