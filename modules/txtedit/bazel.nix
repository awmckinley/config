{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # build tool that builds code quickly and reliably
    bazel
  ];
}
