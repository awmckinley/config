{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # command line tools for Azure Functions
    azure-functions-core-tools
  ];
} 