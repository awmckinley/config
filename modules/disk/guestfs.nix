{
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # tools for accessing and modifying virtual machine disk images
    libguestfs-with-appliance
  ];
}
