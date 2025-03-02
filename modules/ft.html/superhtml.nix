{ lib, pkgs, ... }:
{
  environment.systemPackages =
    lib.optionals pkgs.stdenv.isDarwin (
      with pkgs;
      [
        # HTML language server and templating language library
        superhtml
      ]
    )
    ++ lib.optionals pkgs.stdenv.isLinux (
      with pkgs;
      [
        # HTML language server and templating language library
        superhtml
      ]
    );
}
