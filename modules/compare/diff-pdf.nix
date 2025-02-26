{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # visually compare two PDF files
    diff-pdf
  ];
}
