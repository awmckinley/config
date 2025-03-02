{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # static analyzer and a linter for Lua
    lua51Packages.luacheck
  ];
}
