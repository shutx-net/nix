<div align="center">

# ❄️ NixOS Workstation

shutx's NixOS configuration (Flakes)

[![NixOS](https://img.shields.io/badge/NixOS-26.05-5277C3?style=for-the-badge&logo=nixos&logoColor=white)](https://nixos.org)
[![Flakes](https://img.shields.io/badge/Nix-Flakes-7EBAE4?style=for-the-badge&logo=nixos&logoColor=white)](https://wiki.nixos.org/wiki/Flakes)
[![KDE Plasma](https://img.shields.io/badge/KDE_Plasma-6-1D99F3?style=for-the-badge&logo=kde&logoColor=white)](https://kde.org/plasma-desktop/)

</div>

## Structure

| File | Description |
| --- | --- |
| `flake.nix` | Entry point (nixpkgs 26.05 / unstable / herdr) |
| `configuration.nix` | System settings |
| `apps.nix` | Tools and apps to install |
| `hardware-configuration.nix` | Hardware settings (auto-generated) |

## Usage

```bash
sudo nixos-rebuild switch --flake .#nixos
```
```bash
nix flake update
```
