{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # toolchain of the web
    # replaces: dprint, Prettier, Putout
    biome
  ];
}
