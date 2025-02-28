{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages =
    with pkgs;
    [
      # Keybase official command-line utility and service
      keybase
    ]
    ++ lib.optionals (isLinux && !isWSL) [
      # Keybase official GUI
      keybase-gui
    ];
}
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # Keybase official GUI
    "keybase"
  ];
}
