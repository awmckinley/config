{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # zettelkasten plain text note-taking assistant
    # replaces: nb
    zk
  ];
}
