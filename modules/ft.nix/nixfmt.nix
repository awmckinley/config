{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # official formatter for Nix code
    # replaces: alejandra
    nixfmt-rfc-style
  ];
} 