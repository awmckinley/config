{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # shell parser and formatter
    # replaces: beautysh
    shfmt
  ];
}
