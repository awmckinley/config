{
  inputs,
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  pkgsUnstable,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # rich interactive log viewer for MSBuild logs
    "structuredlogviewer"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = [
    # rich interactive log viewer for MSBuild logs
    pkgsUnstable.msbuild-structured-log-viewer
  ];
}
