{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # share your terminal as a web application
    gotty
  ];
}