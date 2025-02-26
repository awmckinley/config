{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # type checker for the Python language
    basedpyright
  ];
} 