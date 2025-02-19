{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # serve files and directories over HTTP
    miniserve
  ];
}
