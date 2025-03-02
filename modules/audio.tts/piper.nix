{
  isLinux,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isLinux {
  environment.systemPackages = with pkgs; [
    # fast, local neural text to speech system
    piper-phonemize
    piper-tts
  ];
}
