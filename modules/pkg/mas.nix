{
  isDarwin,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  environment.systemPackages = with pkgs; [
    # Mac App Store command line interface
    mas
  ];
}
