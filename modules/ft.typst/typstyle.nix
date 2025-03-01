{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # format your Typst source code
    typstyle
  ];
} 