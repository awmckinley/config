{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # digital distribution platform
    "steam"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  programs.steam = {
    # digital distribution platform
    enable = true;

    # open firewall
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    remotePlay.openFirewall = true;
  };
}
