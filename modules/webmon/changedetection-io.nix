{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # website change detection tracking, monitoring, and notification service
    changedetection-io
  ];
}
