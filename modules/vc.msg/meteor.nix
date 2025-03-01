{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CLI tool for writing conventional commits
    meteor-git
  ];
}
