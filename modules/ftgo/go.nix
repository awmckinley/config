{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Go programming language
    go
  ];
}
