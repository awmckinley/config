# config

My personal configuration.

## Linux/MacOS

```sh
# Set up a new machine
chezmoi init awmckinley/config --apply --source "${HOME}/Code/github.com/awmckinley/config" --verbose
```

## Windows

```powershell
# Set up a new machine
chezmoi init awmckinley/config --apply --source "C:/Code/github.com/awmckinley/config" --verbose
```

### NixOS on WSL

```powershell
wsl --install --no-distribution
wsl --import NixOS $env:USERPROFILE\NixOS\ nixos-wsl.tar.gz --version 2
New-Vhd -Dynamic -SizeBytes 100gb -BlockSizeBytes 1mb -Path $env:USERPROFILE\NixOS\home.vhdx
wsl --mount --vhd $env:USERPROFILE\NixOS\home.vhdx --bare
wsl -d NixOS
```
