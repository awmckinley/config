{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # semantic code analysis engine
    codeql
  ];
}
