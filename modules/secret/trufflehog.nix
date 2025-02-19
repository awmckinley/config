{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # find credentials all over the place
    trufflehog
  ];
}
