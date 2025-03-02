{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # professional PHP tooling for any Language Server Protocol capable editor
    intelephense
  ];
}
