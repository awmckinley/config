{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # LSP wrapper around TypeScript extension bundled with VSCode
    vtsls
  ];
} 