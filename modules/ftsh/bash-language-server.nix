{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # language server for Bash
    bash-language-server
  ];
} 