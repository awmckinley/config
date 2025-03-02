{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # automate code & data workflows with interactive Elixir notebooks
    "livebook"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # automate code & data workflows with interactive Elixir notebooks
    livebook
  ];
}
