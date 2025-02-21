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
    # API documentation browser and code snippet manager
    "dash"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # simple offline API documentation browser
    zeal
  ];
}
