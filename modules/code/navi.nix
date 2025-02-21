{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # interactive cheatsheet tool
    navi
  ];
}
