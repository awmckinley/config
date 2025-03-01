{
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # tiny alternative Discord client
    dorion
  ];
}
