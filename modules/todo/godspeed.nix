{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # manage tasks faster
    "Godspeed" = 714;
  };
}
