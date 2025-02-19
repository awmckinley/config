{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # next generation multi-platform command line experience for Azure
    (azure-cli.withExtensions [
      azure-cli-extensions.azure-devops
      azure-cli-extensions.bastion
    ])

    # command line tools for Azure Functions
    azure-functions-core-tools

    # open source Azure Storage API compatible server
    azurite
  ];
}
