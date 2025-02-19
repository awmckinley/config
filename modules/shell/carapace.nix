{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # multi-shell multi-command argument completer
    carapace
  ];
}
