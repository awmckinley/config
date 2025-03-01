{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # terminal emulator for the web
    "gotty"
  ];
}
