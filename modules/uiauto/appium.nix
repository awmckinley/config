{
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # GUI inspector for the appium UI automation tool
    "appium-inspector"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # GUI inspector for the appium UI automation tool
    appium-inspector
  ];
}
