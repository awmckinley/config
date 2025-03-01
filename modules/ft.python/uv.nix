{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # extremely fast Python package installer and resolver
    # replaces: pdm?, pipenv, pipx, poetry
    uv
  ];
} 