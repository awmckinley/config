{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # command line interface to the freedesktop.org trashcan
    # replaces: gomi
    trash-cli
  ];
}
