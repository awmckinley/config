{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Language Server Protocol (LSP) implementation for TypeScript using tsserver
    typescript-language-server
  ];
} 