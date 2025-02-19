{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Gitea official CLI client
    tea
  ];
}
