{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # markdown LSP server inspired by Obsidian
    # replaces: marksman, prosemd-lsp, remark-ls, zk
    markdown-oxide
  ];
}
