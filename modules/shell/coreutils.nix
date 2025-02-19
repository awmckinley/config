{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # cross-platform Rust rewrite of the GNU coreutils
    uutils-coreutils
  ];
}
