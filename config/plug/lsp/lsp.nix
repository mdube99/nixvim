{
  plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        eslint = {enable = true;};
        html = {enable = true;};
        lua-ls = {
          enable = true;
          settings = {
            hint = {enable = true;};
          };
        };
        nil-ls = {enable = true;};
        marksman = {enable = true;};
        pyright = {enable = true;};
        ruff = {enable = true;};
        gopls = {
          enable = true;
          extraOptions = {
            settings = {
              gopls = {
                hints = {
                  assignVariableTypes = true;
                  compositeLiteralFields = true;
                  compositeLiteralTypes = true;
                  constantValues = true;
                  functionTypeParameters = true;
                  parameterNames = true;
                  rangeVariableTypes = true;
                };
              };
            };
          };
        };
        terraformls = {enable = true;};
        tsserver = {enable = false;};
        yamlls = {
          enable = true;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>rn" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  extraConfigLua = ''
       local _border = "rounded"

       vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
         vim.lsp.handlers.hover, {
           border = _border
         }
       )

       vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
         vim.lsp.handlers.signature_help, {
           border = _border
         }
       )

       vim.diagnostic.config{
         float={border=_border}
       };

       require('lspconfig.ui.windows').default_options = {
         border = _border
       }

    --- toggle inlay hints
    vim.g.inlay_hints_visible = true
    local function toggle_inlay_hints()
    	if vim.g.inlay_hints_visible then
    		vim.g.inlay_hints_visible = false
    		vim.lsp.inlay_hint(bufnr, false)
    	else
    		if client.server_capabilities.inlayHintProvider then
    			vim.g.inlay_hints_visible = true
    			vim.lsp.inlay_hint(bufnr, true)
    		else
    			print("no inlay hints available")
    		end
    	end
    end
  '';
}
