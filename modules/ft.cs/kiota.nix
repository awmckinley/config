{
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # generates an API client to call any OpenAPI
    kiota
  ];
}
