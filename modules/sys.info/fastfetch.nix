{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # like neofetch, but much faster
    # replaces: neofetch
    fastfetch
  ];
}
