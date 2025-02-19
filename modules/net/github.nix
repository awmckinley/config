{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # GitHub CLI extension to display a dashboard with pull requests and issues
    gh-dash

    # GitHub CLI tool
    github-cli
  ];
}
