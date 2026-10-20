
{ pkgs, pkgsUnstable, herdrPkg, lib, ... }:

{
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "google-chrome"
    ];

  environment.systemPackages = [
    pkgs.google-chrome
    pkgs.gh
    pkgs.git
    pkgs.zed-editor
    pkgs.ghostty
    
    pkgsUnstable.claude-code
    pkgsUnstable.codex

    herdrPkg
  ];

  programs.direnv.enable = true;
}
