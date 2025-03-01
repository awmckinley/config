{ isDarwin, lib, pkgs, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    "xbar"
  ];
}
