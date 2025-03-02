{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # extremely fast Python linter
    # replaces: black
    ruff
  ];
}
