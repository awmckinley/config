{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # extremely fast Python package installer and resolver
    uv
  ];
} 