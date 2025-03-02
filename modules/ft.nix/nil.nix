{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # yet another language server for Nix
    # replaces: nixd, rnix
    nil
  ];
}
