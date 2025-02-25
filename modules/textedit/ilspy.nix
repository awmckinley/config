{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages =
    with pkgs;
    [
      # tool for decompiling .NET assemblies and generating portable PDBs
      ilspycmd
    ]
    ++ lib.optionals (isLinux && !isWSL) [
      # .NET assembly browser and decompiler
      avalonia-ilspy
    ];
}
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # .NET assembly browser and decompiler
    "ilspy"
  ];
}
