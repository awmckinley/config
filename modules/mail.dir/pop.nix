{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # send emails from your terminal
    pop
  ];
}
