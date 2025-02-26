{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # logfile navigator
    # replaces: angle-grinder
    lnav
  ];
}
