{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # conversion between documentation formats
    pandoc
  ];
}