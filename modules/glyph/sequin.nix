{ pkgsUnstable, ... }:
{
  environment.systemPackages = [
    # human-readable ANSI sequences
    pkgsUnstable.sequin
  ];
}
