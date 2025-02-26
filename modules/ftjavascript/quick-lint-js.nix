{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # find bugs in JavaScript programs
    quick-lint-js
  ];
} 