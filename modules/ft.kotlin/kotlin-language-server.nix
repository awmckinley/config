{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Kotlin language server
    kotlin-language-server
  ];
}
