{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # corrective Bash syntax highlighter
    shellharden
  ];
}
