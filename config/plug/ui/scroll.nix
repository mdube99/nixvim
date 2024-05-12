{
  plugins.neoscroll = {
    enable = true;
    settings = {
      mappings = [
        "<C-u>"
        "<C-d>"
        "<C-b>"
      ];
      hide_cursor = true;
      stop_eof = true;
      use_local_scrolloff = false;
      respect_scrolloff = false;
      cursor_scrolls_alone = true;
      easing_function = "nil";
      pre_hook = "nil";
      post_hook = "nil";
    };
  };
}
