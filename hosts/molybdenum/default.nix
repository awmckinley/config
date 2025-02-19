{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../systems/linux
    ../../users/adam
  ];

  # use KDE desktop
  desktop = "plasma6";

  # machine name
  networking.hostName = "molybdenum";

  # use the Tokyo Night scheme
  schemeDark = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
  schemeLight = "${pkgs.base16-schemes}/share/themes/tokyo-night-light.yaml";

  # first version installed on this machine
  system.stateVersion = "24.11";

  # time zone
  time.timeZone = "America/Chicago";
}
