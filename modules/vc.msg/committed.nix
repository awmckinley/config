{
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # linting for your git commit messages
    # replaces: commitlint, gitlint
    committed
  ];
}
