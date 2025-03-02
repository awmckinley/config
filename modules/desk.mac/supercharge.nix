{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # supercharge your Mac
    "Supercharge" = 742;
  };
}
