{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  setapp.apps = {
    # create and encrypt archives
    # replaces: Archiver, Keka, The Unarchiver
    "BetterZip" = 245;
  };
}
