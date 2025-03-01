{
  isDarwin,
  lib,
  ...
}:
{
  imports = [
    ./greetd.nix
    ./i3.nix
    ./plasma6.nix
    ./xfce.nix
  ];

  options = {
    desktop = lib.options.mkOption {
      default = if isDarwin then "aerospace" else "i3";
      description = "Desktop environment to use";
      type = lib.types.enum [
        "i3"
        "plasma6"
        "xfce"
      ];
    };
  };
}
