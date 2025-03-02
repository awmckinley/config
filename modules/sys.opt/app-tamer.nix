{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # reduce CPU usage
    "App Tamer" = 466;
  };
}
