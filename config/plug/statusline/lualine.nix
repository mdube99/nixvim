{config, ...}: let
  colors = import ../../colors/${config.theme}.nix {};
in {
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    disabledFiletypes = {
      statusline = ["dashboard" "alpha"];
    };
    theme = {
      normal = {
        a = {
          bg = "#b4befe";
          fg = "#1c1d21";
        };
        b = {
          bg = "nil";
        };
        c = {
          bg = "nil";
        };
        z = {
          bg = "nil";
        };
        y = {
          bg = "nil";
        };
        x = {
          bg = "nil";
        };
      };
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          fmt = "string.lower";
          color = {
            fg = colors.base04;
            bg = colors.base00;
          };
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
          color = {
            fg = colors.base04;
            bg = colors.base00;
          };
        }
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
            fg = colors.base08;
            bg = colors.base00;
          };
        }
      ];
      lualine_x = [
        "diff"
      ];
      lualine_y = [
        {
          name = "filetype";
          extraConfig = {
            icon_only = true;
            colored = false;
            padding = {
              left = 1;
              right = 0;
            };
          };
        }
        {
          name = "filename";
          extraConfig = {
            symbols = {
              modified = "  ";
              readonly = "";
              unnamed = "";
            };
          };
          color = {
            fg = colors.base04;
            bg = colors.base00;
          };
        }
      ];
      lualine_z = [
        {
          name = "location";
          color = {
            fg = colors.base0B;
            bg = colors.base00;
          };
        }
      ];
    };
  };
}
