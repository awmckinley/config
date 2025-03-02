{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # additional tools for Go Development
    (linkFarm "gotools" [
      {
        name = "bin/goimports";
        path = "${gotools}/bin/goimports";
      }
    ])
  ];
}
