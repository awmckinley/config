{ isDarwin, lib, ... }:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # digital painting software
    "firealpaca"
  ];
}
