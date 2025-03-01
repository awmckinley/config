{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # official language server for the Go language
    gopls
  ];
} 