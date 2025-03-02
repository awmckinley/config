{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # language server for emmet.io
    # replaces: emmet-ls
    emmet-language-server
  ];
}
