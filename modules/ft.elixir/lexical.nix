{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # next-generation Elixir language server
    # replaces: elixir-ls
    lexical
  ];
} 