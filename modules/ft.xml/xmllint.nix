{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # XML parsing library for C
    libxml2
  ];
}
