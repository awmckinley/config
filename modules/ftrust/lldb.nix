{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # next-generation high-performance debugger
    lldb
  ];
}
