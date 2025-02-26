{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # debugger for the Go programming language
    delve
  ];
} 