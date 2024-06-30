{config, ...}: let
  lua = x: {__raw = x;};
in {
  colorschemes = {
    base16 = {
      enable = true;
      # setUpBar = false;
      # colorscheme = import ../../colors/${config.theme}.nix {};
      colorscheme = "tokyodark-terminal";
    };
  };
}
