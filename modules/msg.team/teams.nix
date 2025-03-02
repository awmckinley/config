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
    # meet, chat, call, and collaborate in just one place
    "microsoft-teams"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # unofficial Microsoft Teams client
    teams-for-linux
  ];
}
