{
  isDarwin,
  lib,
  remoteDesktop,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.masApps = {
    "Jump Desktop" = 524141863;
  };
}
// lib.optionalAttrs (isDarwin && remoteDesktop) {
  homebrew.casks = [
    # remote desktop app
    # replaces: RustDesk
    "jump-desktop-connect"
  ];
}
