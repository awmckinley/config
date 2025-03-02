{
  isDarwin,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # 3D CAD
    "shapr3d"
  ];
}
