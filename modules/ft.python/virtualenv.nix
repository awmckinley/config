{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tool to create isolated Python environments
    virtualenv
  ];
}
