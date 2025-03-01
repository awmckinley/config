{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Kubernetes CLI
    kubectl
  ];
}
