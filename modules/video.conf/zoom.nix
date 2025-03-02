{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # zoom.us video conferencing application
    "zoom"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # zoom.us video conferencing application
    zoom-us
  ];
}
