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
    # Git client for simultaneous branches on top of your existing workflow
    "gitbutler"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # Git client for simultaneous branches on top of your existing workflow
    gitbutler
  ];
}
