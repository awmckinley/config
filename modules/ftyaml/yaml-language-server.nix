{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # language server for YAML files
    yaml-language-server
  ];
}
