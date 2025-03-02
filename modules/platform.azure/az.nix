{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # next generation multi-platform command line experience for Azure
    (azure-cli.withExtensions [
      azure-cli-extensions.azure-devops
      azure-cli-extensions.bastion
    ])
  ];
}
