{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # fast and powerful Git hooks manager for any type of projects
    lefthook
  ];
}
