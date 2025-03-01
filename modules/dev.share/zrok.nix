{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # geo-scale, next-generation sharing platform built on top of OpenZiti
    # replaces: localtunnel, ngrok, serveo
    zrok
  ];
}