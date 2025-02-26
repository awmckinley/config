{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # intelligent Tailwind CSS tooling
    tailwindcss-language-server
  ];
} 