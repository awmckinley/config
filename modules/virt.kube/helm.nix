{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # package manager for Kubernetes
    kubernetes-helm
  ];
}
