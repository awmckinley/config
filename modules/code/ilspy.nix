{
  isDarwin,
  isLinux,
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
    ++ lib.optionals isLinux [
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
