{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # access app menu commands
    "Paletro" = 465;
  };
}
