{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # new markup-based typesetting system that is powerful and easy to learn
    typst
  ];
}
