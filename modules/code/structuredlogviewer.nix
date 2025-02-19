{
  inputs,
  isDarwin,
  isLinux,
  lib,
  pkgs,
  pkgsUnstable,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # rich interactive log viewer for MSBuild logs
    "structuredlogviewer"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = [
    # rich interactive log viewer for MSBuild logs
    pkgsUnstable.msbuild-structured-log-viewer
  ];
}
