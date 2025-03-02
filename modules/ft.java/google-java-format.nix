{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Java source formatter by Google
    google-java-format
  ];
}
