{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # opinionated Lua code formatter
    stylua
  ];
} 