{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # DAP-compatible JavaScript debugger
    vscode-js-debug
  ];
}
