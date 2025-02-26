{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # HTML-embedded scripting language
    php82
  ];
}
