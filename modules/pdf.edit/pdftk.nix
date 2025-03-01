{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # command-line tool for working with PDFs
    pdftk
  ];
}
