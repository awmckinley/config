{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # app to manage software development and track bugs
    "linear-linear"
  ];
}
