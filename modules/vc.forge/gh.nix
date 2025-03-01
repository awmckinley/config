{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # GitHub CLI tool
    github-cli
  ];
} 