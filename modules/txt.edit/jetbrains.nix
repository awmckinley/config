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
    # JetBrains tools manager
    "jetbrains-toolbox"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # JetBrains tools manager
    jetbrains-toolbox
  ];
}
