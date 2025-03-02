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
    # allows to quickly and easily compare files and folders
    # replaces: Kaleidoscope, Meld
    "beyond-compare"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # allows to quickly and easily compare files and folders
    # replaces: Kaleidoscope, Meld
    bcompare
  ];
}
