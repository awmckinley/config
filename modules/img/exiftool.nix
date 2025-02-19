{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tool to read, write and edit EXIF meta information
    exiftool
  ];
}
