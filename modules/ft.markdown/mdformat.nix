{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CommonMark compliant Markdown formatter
    (mdformat.withPlugins (ps: [
      ps.mdformat-frontmatter
      ps.mdformat-gfm
      ps.mdformat-obsidian
      ps.mdformat-simple-breaks
      ps.mdformat-tables
      ps.mdformat-wikilink
    ]))
  ];
}
