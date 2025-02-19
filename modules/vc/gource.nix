{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # software version control visualization tool
    gource
  ];
}
