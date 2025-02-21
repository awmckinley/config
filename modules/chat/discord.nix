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
    # all-in-one cross-platform voice and text chat for gamers
    "discord"

    # modern Discord voice chat overlay
    "overlayed"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # all-in-one cross-platform voice and text chat for gamers
    discord

    # tiny alternative Discord client
    dorion

    # modern Discord voice chat overlay
    overlayed
  ];
}
