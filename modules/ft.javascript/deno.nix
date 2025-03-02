{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # secure runtime for JavaScript and TypeScript
    deno
  ];
}
