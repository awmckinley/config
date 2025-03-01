{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # CSS framework with composable CSS classes
    tailwindcss
  ];
} 