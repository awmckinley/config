{
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # multi-platform app that allows your devices to communicate
    kdePackages.kdeconnect-kde
  ];
}
