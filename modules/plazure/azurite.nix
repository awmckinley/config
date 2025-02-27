{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # open source Azure Storage API compatible server
    azurite
  ];
} 