{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tool for formatting Clojure code
    cljfmt
  ];
} 