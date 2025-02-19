{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # perform HTTP requests defined in a simple plain text format
    hurl
  ];
}
