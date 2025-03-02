{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  system.defaults.CustomUserPreferences = {
    "com.apple.Safari" = {
      # open to blank page
      HomePage = "about:blank";
    };
  };
}
