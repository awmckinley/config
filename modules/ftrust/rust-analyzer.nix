{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # modular compiler frontend for the Rust language
    rust-analyzer
  ];
}
