{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # XML language server
    lemminx
  ];
}
