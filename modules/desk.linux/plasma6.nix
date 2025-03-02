{
  config,
  isLinux,
  lib,
  ...
}:
lib.optionalAttrs isLinux {
  # KDE Plasma desktop
  services.desktopManager.plasma6.enable = config.desktop == "plasma6";

  # QML based X11 display manager
  services.displayManager.sddm.enable = config.desktop == "plasma6";
}
