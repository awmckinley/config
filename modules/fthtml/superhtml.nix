{ lib, pkgs, ... }: {
  environment.systemPackages =
    lib.optionals pkgs.stdenv.isDarwin [
      # HTML language server and templating language library
      superhtml-bin
    ]
    ++ lib.optionals pkgs.stdenv.isLinux [
      # HTML language server and templating language library
      superhtml
    ];
}