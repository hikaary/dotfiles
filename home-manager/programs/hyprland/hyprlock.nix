{ config, lib, ... }: {
  programs.hyprlock = {
    enable = true;
    settings = {
      # Color definitions from mocha.conf
      "$rosewater" = "rgb(f5e0dc)";
      "$rosewaterAlpha" = "f5e0dc";
      "$flamingo" = "rgb(f2cdcd)";
      "$flamingoAlpha" = "f2cdcd";
      "$pink" = "rgb(f5c2e7)";
      "$pinkAlpha" = "f5c2e7";
      "$mauve" = "rgb(cba6f7)";
      "$mauveAlpha" = "cba6f7";
      "$red" = "rgb(f38ba8)";
      "$redAlpha" = "f38ba8";
      "$maroon" = "rgb(eba0ac)";
      "$maroonAlpha" = "eba0ac";
      "$peach" = "rgb(fab387)";
      "$peachAlpha" = "fab387";
      "$yellow" = "rgb(f9e2af)";
      "$yellowAlpha" = "f9e2af";
      "$green" = "rgb(a6e3a1)";
      "$greenAlpha" = "a6e3a1";
      "$teal" = "rgb(94e2d5)";
      "$tealAlpha" = "94e2d5";
      "$sky" = "rgb(89dceb)";
      "$skyAlpha" = "89dceb";
      "$sapphire" = "rgb(74c7ec)";
      "$sapphireAlpha" = "74c7ec";
      "$blue" = "rgb(89b4fa)";
      "$blueAlpha" = "89b4fa";
      "$lavender" = "rgb(b4befe)";
      "$lavenderAlpha" = "b4befe";
      "$text" = "rgb(cdd6f4)";
      "$textAlpha" = "cdd6f4";
      "$subtext1" = "rgb(bac2de)";
      "$subtext1Alpha" = "bac2de";
      "$subtext0" = "rgb(a6adc8)";
      "$subtext0Alpha" = "a6adc8";
      "$overlay2" = "rgb(9399b2)";
      "$overlay2Alpha" = "9399b2";
      "$overlay1" = "rgb(7f849c)";
      "$overlay1Alpha" = "7f849c";
      "$overlay0" = "rgb(6c7086)";
      "$overlay0Alpha" = "6c7086";
      "$surface2" = "rgb(585b70)";
      "$surface2Alpha" = "585b70";
      "$surface1" = "rgb(45475a)";
      "$surface1Alpha" = "45475a";
      "$surface0" = "rgb(313244)";
      "$surface0Alpha" = "313244";
      "$base" = "rgb(1e1e2e)";
      "$baseAlpha" = "1e1e2e";
      "$mantle" = "rgb(181825)";
      "$mantleAlpha" = "181825";
      "$crust" = "rgb(11111b)";
      "$crustAlpha" = "11111b";

      # Variables from old config
      "$accent" = "$mauve";
      "$accentAlpha" = "$mauveAlpha";
      "$font" = "JetBrainsMono Nerd Font";

      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

      background = {
        monitor = "";
        path = lib.mkForce
          "${config.home.homeDirectory}/dotfiles/wallpapers/minimalist-moon-night-mountains.jpg";
        blur_passes = 0;
        color = lib.mkForce "$base";
      };

      image = {
        monitor = "";
        path = "$HOME/.face";
        size = 100;
        border_color = lib.mkForce "$accent";
        position = "0, 75";
        halign = "center";
        valign = "center";
      };

      input-field = {
        monitor = "";
        size = "300, 60";
        outline_thickness = 4;
        dots_size = 0.2;
        dots_spacing = 0.2;
        dots_center = true;
        outer_color = lib.mkForce "$accent";
        inner_color = lib.mkForce "$surface0";
        font_color = lib.mkForce "$text";
        fade_on_empty = false;
        placeholder_text = ''<span foreground="##$textAlpha"><i>󰌾 Logged in as </i><span foreground="##$accentAlpha">$USER</span></span>'';
        hide_input = false;
        check_color = lib.mkForce "$accent";
        fail_color = lib.mkForce "$red";
        fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
        capslock_color = lib.mkForce "$yellow";
        position = "0, -47";
        halign = "center";
        valign = "center";
      };

      label = [
        {
          monitor = "";
          text = "Layout: $LAYOUT";
          color = lib.mkForce "$text";
          font_size = 25;
          font_family = "$font";
          position = "30, -30";
          halign = "left";
          valign = "top";
        }
        {
          monitor = "";
          text = "$TIME";
          color = lib.mkForce "$text";
          font_size = 90;
          font_family = "$font";
          position = "-30, 0";
          halign = "right";
          valign = "top";
        }
        {
          monitor = "";
          text = ''cmd[update:43200000] date +"%A, %d %B %Y"'';
          color = lib.mkForce "$text";
          font_size = 25;
          font_family = "$font";
          position = "-30, -150";
          halign = "right";
          valign = "top";
        }
      ];
    };
  };
}
