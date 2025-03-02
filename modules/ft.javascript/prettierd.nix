{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Prettier, as a daemon, for improved formatting speed
    prettierd
  ];
}
