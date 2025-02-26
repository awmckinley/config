{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # shell script analysis tool
    shellcheck
  ];
} 