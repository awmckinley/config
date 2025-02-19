{
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # automate code & data workflows with interactive Elixir notebooks
    "livebook"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # automate code & data workflows with interactive Elixir notebooks
    livebook
  ];
}
