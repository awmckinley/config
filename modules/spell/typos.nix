{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # source code spell checker
    typos
  ];
}
