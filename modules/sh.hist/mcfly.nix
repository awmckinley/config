{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # upgraded ctrl-r where history results make sense for what you're working on right now
    # replaces: Atuin
    mcfly

    # integrate McFly with fzf
    mcfly-fzf
  ];
}
