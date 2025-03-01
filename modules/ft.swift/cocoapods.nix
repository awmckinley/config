{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # manages dependencies for your Xcode projects
    cocoapods
  ];
}
