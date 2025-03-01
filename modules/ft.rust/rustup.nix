{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # downloads your Rust project's dependencies and builds your project
    cargo

    # cargo dependencies
    graphviz

    # check and apply updates to installed executables
    cargo-update

    # safe, concurrent, practical language
    rustc

    # tool for formatting Rust code according to style guidelines
    rustfmt
  ];
}
