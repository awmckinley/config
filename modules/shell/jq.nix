{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # lightweight and flexible command-line JSON processor
    jq

    # interactive jq
    ijq
  ];
}
