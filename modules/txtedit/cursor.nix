{
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # write, edit, and chat about your code with AI
    # NOTE: Cursor 0.46 has a bug which inconsistently applies cursor rules
    # "cursor"
  ];
}
// lib.optionalAttrs (isLinux && !isWSL) {
  environment.systemPackages = with pkgs; [
    # write, edit, and chat about your code with AI
    code-cursor
  ];
}
