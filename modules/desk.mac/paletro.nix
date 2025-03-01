{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.casks = {
    # access app menu commands
    "Paletro" = 465;
  }
}
