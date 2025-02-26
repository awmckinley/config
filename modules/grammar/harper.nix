{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # grammar checker for developers
    # replaces: languagetool
    harper
  ];
}
