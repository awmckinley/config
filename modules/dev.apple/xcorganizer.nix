{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  setapp.apps = {
    # organize Xcode projects
    "XCOrganizer" = 407;
  };
}
