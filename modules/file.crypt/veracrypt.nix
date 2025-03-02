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
    # free Open-Source filesystem on-the-fly encryption
    "veracrypt"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # free Open-Source filesystem on-the-fly encryption
    veracrypt
  ];
}
