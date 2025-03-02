{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # keep your Mac awake
    "Lungo" = 270;
  };
}
