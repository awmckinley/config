{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # display management tool
    "betterdisplay"
  ];
}
