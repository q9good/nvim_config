local cmp = require "cmp"

local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    'saecki/crates.nvim',
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates  = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
      crates.show()
      require("core.utils").load_mappings("crates")
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    config = function(_, opts)
      require("nvim-dap-virtual-text").setup()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      M.completion.completeopt = "menu,menuone,noselect"
      M.mapping["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "phaazon/hop.nvim",
    lazy = true,
    keys = { "M" },
    config = function()
        require("hop").setup({})
        -- vim.api.nvim_set_keymap("n", "R", "<cmd>HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "E", "<cmd>HopChar1<cr>", { silent = true })
        -- vim.api.nvim_set_keymap("n", "U", "<cmd>HopWord<cr>", { silent = true })
        -- vim.api.nvim_set_keymap("n", "C", "<cmd>HopLine<cr>", { silent = true })
        -- vim.api.nvim_set_keymap("n", "P", "<cmd>HopPattern<cr>", { silent = true })
    end,
  }, 
  {
    "romgrk/nvim-treesitter-context",
    lazy = true,
    event = { "User FileOpened" },
    config = function()
        require("treesitter-context").setup({
            enable = true,
            throttle = true,
            max_lines = 0,
            patterns = {
                default = {
                    "class",
                    "function",
                    "method",
                },
            },
        })
    end,
  }, 
}
return plugins
