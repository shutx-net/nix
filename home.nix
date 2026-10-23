{ ... }:

{
  home.stateVersion = "26.05";

  programs.zed-editor = {
    enable = true;

    # Merged into ~/.config/zed/settings.json on switch.
    # Keys set here take precedence; other settings changed in Zed are kept.
    userSettings = { };
  };

  programs.ghostty = {
    enable = true;

    # Written to ~/.config/ghostty/config
    settings = { };
  };
}
