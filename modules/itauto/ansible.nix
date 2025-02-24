{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # radically simple IT automation
    ansible
  ];
}
