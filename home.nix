{ ... }:

{
  home.stateVersion = "26.05";

  programs.zed-editor = {
    enable = true;

    # Merged into ~/.config/zed/settings.json on switch.
    # Keys set here take precedence; other settings changed in Zed are kept.
    userSettings = {
      project_panel.dock = "left";
      git_panel.dock = "left";
    };
  };

  programs.ghostty = {
    enable = true;

    # Written to ~/.config/ghostty/config
    settings = {
      background-opacity = 0.88;

      # ANSI green, used by the bash prompt. The default (#b5bd68) looks olive.
      palette = [ "2=#3fb950" ];
    };
  };

  programs.plasma = {
    enable = true;

    # Written to ~/.config/powerdevilrc; profiles not set here keep Plasma's defaults.
    powerdevil.AC = {
      dimDisplay.enable = false;
      turnOffDisplay.idleTimeout = "never";
      autoSuspend.action = "nothing";
    };
  };
}
