{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # modern Python package and dependency manager supporting the latest PEP standards
    # replaces: poetry
    pdm
  ];
}
