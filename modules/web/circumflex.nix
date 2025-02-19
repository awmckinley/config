{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # browse Hacker News in your terminal
    circumflex
  ];
}
