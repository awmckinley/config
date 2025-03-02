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
    # GPU-accelerated cross-platform terminal emulator and multiplexer
    "wezterm"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # GPU-accelerated cross-platform terminal emulator and multiplexer
    wezterm
  ];
}
