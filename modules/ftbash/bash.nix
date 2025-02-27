{
  isLinux,
  lib,
  pkgs,
  ...
}:
{
  # link Bash files
  environment.pathsToLink = [ "/share/bash" ];

  # add Bash to system shells
  environment.shells = [ pkgs.bashInteractive ];
}
// lib.optionalAttrs isLinux {
  # make Bash the default shell
  users.defaultUserShell = pkgs.bashInteractive;
}
