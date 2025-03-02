{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # tool to automatically fix PHP coding standards issues
    php82Packages.php-cs-fixer
  ];
}
