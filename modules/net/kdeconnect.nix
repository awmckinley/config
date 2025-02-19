{
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # multi-platform app that allows your devices to communicate
    kdePackages.kdeconnect-kde
  ];
}
