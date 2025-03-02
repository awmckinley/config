{
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.brews = [
    # HTML/CSS/JSON/ESLint language servers
    "vscode-langservers-extracted"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # HTML/CSS/JSON/ESLint language servers
    vscode-langservers-extracted
  ];
}
