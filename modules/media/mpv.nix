{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # modern media player for macOS
    "iina"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # general-purpose media player
    mpv
  ];
}
