{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # functional, meta-programming aware language built on top of the Erlang VM
    elixir
  ];
}
