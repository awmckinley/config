{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # toolchain of the web
    # replaces: dprint, Prettier, Putout
    biome

    # incredibly fast JavaScript runtime, bundler, transpiler and package manager
    bun

    # secure runtime for JavaScript and TypeScript
    deno

    # AST-based pattern checker for JavaScript
    eslint

    # event-driven I/O framework for the V8 JavaScript engine
    nodejs_22

    # fast, disk space efficient package manager for JavaScript
    pnpm

    # Prettier, as a daemon, for improved formatting speed
    prettierd

    # find bugs in JavaScript programs
    quick-lint-js

    # Language Server Protocol (LSP) implementation for TypeScript using tsserver
    typescript-language-server

    # DAP-compatible JavaScript debugger
    vscode-js-debug

    # LSP wrapper around TypeScript extension bundled with VSCode
    # NOTE: https://github.com/NixOS/nixpkgs/pull/319501
    # vtsls

    # fast, reliable, and secure dependency management
    yarn-berry
  ];
}
