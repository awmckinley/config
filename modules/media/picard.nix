{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages =
    with pkgs;
    [
      # AcoustID audio fingerprinting library
      chromaprint
    ]
    ++ lib.optionals (isLinux && !isWSL) [
      # official MusicBrainz tagger
      picard
    ];
}
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # official MusicBrainz tagger
    "musicbrainz-picard"
  ];
}
