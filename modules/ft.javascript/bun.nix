{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # incredibly fast JavaScript runtime, bundler, transpiler and package manager
    bun
  ];
}
