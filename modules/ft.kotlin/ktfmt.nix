{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # reformats Kotlin source code
    ktfmt
  ];
} 