{
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # opinionated code formatter for C#
    csharpier
  ];
}
