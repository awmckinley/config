{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tool that makes it easy to run Kubernetes locally
    minikube
  ];
}
