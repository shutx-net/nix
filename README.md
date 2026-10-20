<div align="center">

# ❄️ NixOS Workstation

shutx の NixOS 設定（Flakes）

[![NixOS](https://img.shields.io/badge/NixOS-26.05-5277C3?style=for-the-badge&logo=nixos&logoColor=white)](https://nixos.org)
[![Flakes](https://img.shields.io/badge/Nix-Flakes-7EBAE4?style=for-the-badge&logo=nixos&logoColor=white)](https://wiki.nixos.org/wiki/Flakes)
[![KDE Plasma](https://img.shields.io/badge/KDE_Plasma-6-1D99F3?style=for-the-badge&logo=kde&logoColor=white)](https://kde.org/plasma-desktop/)

</div>

## 構成

| ファイル | 内容 |
| --- | --- |
| `flake.nix` | エントリポイント（nixpkgs 26.05 / unstable / herdr） |
| `configuration.nix` | システム設定 |
| `apps.nix` | インストールするツール・アプリ |
| `hardware-configuration.nix` | ハードウェア設定（自動生成） |

## 使い方

```bash
sudo nixos-rebuild switch --flake .#nixos
```
```bash
nix flake update
```
