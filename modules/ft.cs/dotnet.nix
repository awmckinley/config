{
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.taps = [ "isen-ng/dotnet-sdk-versions" ];
  homebrew.casks = [
    # .NET SDK
    "dotnet"
    "isen-ng/dotnet-sdk-versions/dotnet-sdk6-0-400"
    "isen-ng/dotnet-sdk-versions/dotnet-sdk7-0-400"
    "isen-ng/dotnet-sdk-versions/dotnet-sdk8-0-400"
    "isen-ng/dotnet-sdk-versions/dotnet-sdk9-0-200"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # .NET SDK
    (dotnetCorePackages.combinePackages [
      dotnetCorePackages.sdk_6_0
      dotnetCorePackages.sdk_7_0
      dotnetCorePackages.sdk_8_0
      dotnetCorePackages.sdk_9_0
    ])
  ];
}
