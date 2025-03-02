{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # menu bar icon organiser
    # replaces: Dozer, Hidden Bar
    "Bartender" = 153;
  };
}
