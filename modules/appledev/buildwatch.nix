{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  setapp.apps = {
    # track your build time in Xcode
    "Buildwatch" = 467;
  };
}
