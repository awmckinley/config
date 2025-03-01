_: {
  imports = [
    ./ghostty.nix
    ./wezterm.nix
  ];
}
// lib.optionalAttrs isLinux {
  # install all terminfo outputs
  environment.enableAllTerminfo = true;
}
