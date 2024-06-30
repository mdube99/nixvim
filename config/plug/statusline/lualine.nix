{config, ...}: let
  colors = import ../../colors/${config.theme}.nix {};
in {
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    disabledFiletypes = {
      statusline = ["dashboard" "alpha" "starter"];
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          separator.left = "";
          #fmt = "string.lower";
          # color = {
          #   fg =
          #     if config.colorschemes.base16.enable
          #     then colors.base04
          #     else "none";
          #   bg =
          #     if config.colorschemes.base16.enable
          #     then colors.base00
          #     else "none";
          # };
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
          color = {
            fg =
              if config.colorschemes.base16.enable
              then colors.base04
              else "none";
            bg =
              if config.colorschemes.base16.enable
              then colors.base00
              else "none";
          };
        }
        "diff"
      ];
      lualine_c = [
        {
          name = "diagnostic";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
          color = {
            fg =
              if config.colorschemes.base16.enable
              then colors.base08
              else "none";
            bg =
              if config.colorschemes.base16.enable
              then colors.base00
              else "none";
          };
        }
      ];
      lualine_x = [
        {
          name = "filetype";
          extraConfig = {
            icon_only = true;
          };
        }
      ];
      lualine_y = [
        {
          name = "filename";
          extraConfig = {
            symbols = {
              modified = "";
              readonly = "";
              unnamed = "";
            };
          };
          color = {
            fg =
              if config.colorschemes.base16.enable
              then colors.base04
              else "none";
            bg =
              if config.colorschemes.base16.enable
              then colors.base00
              else "none";
          };
          separator.left = "";
        }
      ];
      lualine_z = [
        {
          name = "location";
          color = {
            fg =
              if config.colorschemes.base16.enable
              then colors.base0B
              else "none";
            bg =
              if config.colorschemes.base16.enable
              then colors.base00
              else "none";
          };
        }
      ];
    };
  };
}
