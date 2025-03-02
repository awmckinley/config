{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Java language server
    jdt-language-server
  ];
}
