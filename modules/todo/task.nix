{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # highly flexible command-line tool to manage todo lists
    # replaces: todoman, ultralist
    taskwarrior3

    # REPL for Taskwarrior
    tasksh

    # terminal user interface for Taskwarrior
    # replaces: vit
    taskwarrior-tui
  ];
}
