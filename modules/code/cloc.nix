{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # counts lines of source code
    cloc
  ];
}
