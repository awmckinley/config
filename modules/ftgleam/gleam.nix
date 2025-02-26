{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # statically typed language for the Erlang VM
    gleam
  ];
}
