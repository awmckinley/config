{
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # Roslyn-based LSP language server
    # replaces: omnisharp-roslyn
    csharp-ls
  ];
}
