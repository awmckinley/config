{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # open-source firewall to block unknown outgoing connections
    "lulu"
  ];
}