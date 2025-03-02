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
    # multi-platform password manager
    # replaces: Bitwarden, gopass, KeePass, LastPass, pass
    "1password"

    # 1Password command-line tool
    "1password-cli"
  ];

  homebrew.masApps = {
    # save & share passwords safely
    "1Password for Safari" = 1569813296;
  };
}
// lib.optionalAttrs (isLinux && !isWSL) {
  # 1Password command-line tool
  programs._1password.enable = true;

  # multi-platform password manager
  # replaces: Bitwarden, gopass, KeePass, LastPass, pass
  programs._1password-gui.enable = true;
}
