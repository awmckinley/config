{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.masApps = {
    # everything developers need to create great applications
    "Xcode" = 497799835;
  };
}
