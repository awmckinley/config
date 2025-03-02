{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.masApps = {
    # your source for developer news, features, and videos
    "Developer" = 640199958;
  };
}
