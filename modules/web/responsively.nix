{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgsUnstable,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # browser that helps in responsive web development
    # replaces: Blisk, Polypane, Sizzy
    "responsively"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = [
    # browser that helps in responsive web development
    # replaces: Blisk, Polypane, Sizzy
    pkgsUnstable.responsively-app
  ];
}
