{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # personal markdown scribe with template-engine
    markscribe
  ];
}
