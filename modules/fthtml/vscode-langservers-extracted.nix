{
  isDarwin,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = lib.optionals pkgs.stdenv.isLinux [
    # HTML/CSS/JSON/ESLint language servers
    vscode-langservers-extracted
  ];
} // lib.optionalAttrs isDarwin {
  homebrew.brews = [
    # HTML/CSS/JSON/ESLint language servers
    "vscode-langservers-extracted"
  ];
}