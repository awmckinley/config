{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.masApps = {
    # clipboard manager
    # replaces: Xournal++
    "Goodnotes 6" = 1444383602;
  };
}
