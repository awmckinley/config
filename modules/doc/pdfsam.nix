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
    # extracts pages, splits, merges, mixes and rotates PDF files
    "pdfsam-basic"
  ];
}
// lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # extracts pages, splits, merges, mixes and rotates PDF files
    pdfsam-basic
  ];
}
