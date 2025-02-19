{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # database client every command line junkie deserves
    dblab
  ];
}
