{
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # special build of curl that can impersonate Chrome & Firefox
    curl-impersonate
  ];
}
