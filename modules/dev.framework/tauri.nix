{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # build smaller, faster, and more secure desktop applications with a web frontend
    cargo-tauri
  ];
}
