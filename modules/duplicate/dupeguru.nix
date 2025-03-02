{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # find duplicate files in a system
    "dupeguru"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # find duplicate files in a system
    dupeguru
  ];
}
