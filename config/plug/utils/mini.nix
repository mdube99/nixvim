{
  plugins.mini = {
    enable = true;
    modules = {
      ai = {
        n_lines = 50;
        search_method = "cover_or_next";
      };
      indentscope = {
        symbol = "│";
        options = {try_as_border = true;};
      };
      tabline = {};
    };
  };
}
