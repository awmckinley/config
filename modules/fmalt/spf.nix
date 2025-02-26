{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # pretty fancy and modern terminal file manager
    superfile
  ];
}
