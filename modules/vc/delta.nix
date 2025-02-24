{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # syntax-highlighting pager for Git
    # replaces: diff-so-fancy, git-split-diffs
    delta

    # delta dependencies
    bat
  ];
}
