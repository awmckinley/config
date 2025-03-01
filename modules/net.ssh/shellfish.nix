{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.masApps = {
    # powerful SSH terminal for iOS & Mac
    # replaces: Prompt 3
    "ShellFish" = 1336634154;
  };
}
