{
  isDarwin,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # text and hex editor
    "010-editor"
  ];
}
