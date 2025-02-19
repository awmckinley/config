{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # front-end to your dev env
    mise
  ];
}
