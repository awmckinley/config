{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # transcribe and translate audio offline on your personal computer
    "buzz"
  ];
}
