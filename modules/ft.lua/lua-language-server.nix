{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # language server that offers Lua language support
    lua-language-server
  ];
} 