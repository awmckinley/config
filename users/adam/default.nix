{
  config,
  isDarwin,
  isLinux,
  lib,
  pkgs,
  ...
}:
let
  homeDir = if isDarwin then "/Users/adam" else "/home/adam";
  downloads = "${homeDir}/Downloads";
in
{
  home-manager.users.adam = import ./home.nix;
  nix.settings.trusted-users = [ "adam" ];

  users.users.adam =
    {
      createHome = true;
      description = "Adam McKinley";
      home = homeDir;
    }
    // lib.optionalAttrs isDarwin {
      shell = pkgs.zsh;
    }
    // lib.optionalAttrs isLinux {
      group = "users";
      isNormalUser = true;
      isSystemUser = false;
      shell = pkgs.bashInteractive;

      # if false, sets shell to nologin
      useDefaultShell = true;

      extraGroups = [
        "docker"
        "networkmanager"
        "wheel"
      ];
    };
}
// lib.optionalAttrs isDarwin {
  system.defaults.dock.persistent-others = [ "${downloads}" ];
  system.defaults.screencapture.location = "${downloads}";
}
// lib.optionalAttrs isLinux {
  programs._1password-gui.polkitPolicyOwners = [ "adam" ];
}
