{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "live-command.nvim";
      version = "1.2.1";
      src = pkgs.fetchFromGitHub {
        owner = "smjonas";
        repo = "live-command.nvim";
        rev = "d460067d47948725a6f25b20f31ea8bbfdfe4622";
        hash = "sha256-e7iFI4zSxX+muIcAK27O4ac25cVnEvCtLeND0qU/71A=";
      };
    })
  ];
  extraConfigLua = ''
    require("live-command").setup {
      commands = {
        Norm = { cmd = "norm" },
      },
    }
  '';
}
