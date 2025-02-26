{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # fast, disk space efficient package manager for JavaScript
    pnpm
  ];
} 