{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # stricter gofmt
    gofumpt
  ];
}
