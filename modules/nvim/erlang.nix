{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Erlang language server
    erlang
  ];
}
