{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Common Lisp compiler
    sbcl
  ];
}
