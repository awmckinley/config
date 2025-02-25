{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # manage Extism installations
    extism-cli
  ];
}
