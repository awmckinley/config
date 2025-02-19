{
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # file manager powered by a virtual distributed filesystem
    "spacedrive"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # file manager powered by a virtual distributed filesystem
    spacedrive
  ];
}
