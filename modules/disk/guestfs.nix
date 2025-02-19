{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tools for accessing and modifying virtual machine disk images
    libguestfs-with-appliance
  ];
}
