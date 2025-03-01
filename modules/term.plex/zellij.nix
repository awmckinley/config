{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # terminal workspace with batteries included
    zellij
  ];
}
