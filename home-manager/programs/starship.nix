{ ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$character";
      right_format = "$all";
      command_timeout = 1000;
      palette = "catppuccin_mocha";

      character = {
        vicmd_symbol = "[N] ❯❯❯";
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
      };

      directory = {
        substitutions = { "~/tests/starship-custom" = "work-project"; };
        style = "bold blue";
        truncation_length = 3;
        truncation_symbol = "…/";
        read_only = " ";
      };

      git_branch = {
        format = "[$symbol$branch(:$remote_branch)]($style)";
        symbol = " ";
      };

      aws = {
        format = ''[$symbol(profile: "$profile" )(\(region: $region\) )]($style)'';
        disabled = false;
        style = "bold blue";
        symbol = " ";
      };

      golang = { format = "[ ](bold cyan)"; };

      kubernetes = {
        symbol = "☸ ";
        disabled = true;
        detect_files = [ "Dockerfile" ];
        format = "[$symbol$context( \\($namespace\\))]($style) ";
        contexts = [{
          context_pattern = "arn:aws:eks:us-west-2:577926974532:cluster/zd-pvc-omer";
          style = "green";
          context_alias = "omerxx";
          symbol = "⎈ ";
        }];
      };

      docker_context = { disabled = true; };

      palettes.catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };
    };
  };
}
