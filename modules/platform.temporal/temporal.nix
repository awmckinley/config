{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # run Temporal Server and interact with Workflows, Activities and Namespaces
    temporal-cli
  ];
}
