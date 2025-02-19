{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # simple tool for visually comparing two PDF files
    diff-pdf
  ];
}
