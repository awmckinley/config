{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # programming language used for massively scalable soft real-time systems
    erlang
  ];
}
