return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local util = require("lspconfig.util")
      opts.servers = opts.servers or {}

      opts.servers.pyright = {
        -- good root markers for Python projects
        root_dir = util.root_pattern(".git", "pyproject.toml", "setup.cfg", "setup.py", "requirements.txt"),
        before_init = function(_, config)
          local py = vim.g.python3_host_prog
          if py then
            config.settings = config.settings or {}
            config.settings.python = config.settings.python or {}
            config.settings.python.pythonPath = py
            -- optional hints
            config.settings.python.venvPath = vim.fn.getcwd()
            config.settings.python.venv = ".venv"
          end
        end,
      }

      -- (optional) Ruff LSP, if you use it
      opts.servers.ruff_lsp = { init_options = { settings = { args = {} } } }

      return opts
    end,
  },
}
