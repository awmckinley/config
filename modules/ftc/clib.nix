{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # C micro-package manager
    clib
  ];
}
