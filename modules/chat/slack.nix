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
    # desktop client for Slack
    "slack"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # desktop client for Slack
    slack
  ];
}
