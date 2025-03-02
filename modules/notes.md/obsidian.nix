{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # knowledge base that works on top of a local folder of plain text files
    # replaces: Diarium
    "obsidian"
  ];

  homebrew.masApps = {
    # use your notes with Shortcuts
    "Actions For Obsidian" = 1659667937;
  };
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # knowledge base that works on top of a local folder of plain text files
    # replaces: Diarium
    obsidian
  ];
}
