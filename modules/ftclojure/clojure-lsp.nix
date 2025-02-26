{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Language Server Protocol for Clojure
    clojure-lsp
  ];
} 