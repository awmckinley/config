{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # terminal based presentation tool
    slides
  ];
}
