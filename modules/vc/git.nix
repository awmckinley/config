{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # distributed version control system
    git

    # CHANGELOG generator
    git-chglog

    # secure, cross-platform Git credential storage
    git-credential-manager

    # Git extension for versioning large files
    git-lfs
  ];
}
