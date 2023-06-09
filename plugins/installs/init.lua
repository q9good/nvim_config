return {
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
    { "echasnovski/mini.align", version = false },
    { "simrat39/rust-tools.nvim", lazy = false,
        config = function ()
            require("rust-tools").setup(
                require("custom.plugins.installs.rust-tools")
            )
        end
    },
--   {
--     "max397574/better-escape.nvim",
--     event = "InsertEnter",
--     config = function()
--       require("better_escape").setup()
--     end,
--   },

--   -- Automated session manager for Neovim
--   {
--     'rmagatti/auto-session',
--     lazy = false,
--     config = function ()
--       local present, auto_session = pcall(require, 'auto-session')
--       if present then
--         local conf = require  "custom.plugins.installs.auto_session"
--         auto_session.setup(conf)
--       end
--     end
--   },

--   {
--     'simrat39/symbols-outline.nvim',
--     cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
--     config = function ()
--       local present, symbols_outline = pcall(require, "symbols-outline")
--       if present then
--         local conf = require('custom.plugins.installs.symbols-outline')
--         symbols_outline.setup(conf)
--       end
--     end
--   },

--   {
--     'tpope/vim-rails',
--     ft = {'rb', 'ruby'}
--   },

--   { 'editorconfig/editorconfig-vim' },

--   {
--     'mattn/emmet-vim',
--     -- event = {"InsertEnter", "FileType"},
--     ft = {
--       "html", "css", "vue",
--       "javascript", "javascriptreact",
--       "svelte", "wxml", "wxss", "scss", "sass", "erb"
--     },
--     setup = function ()
--       require("custom.plugins.installs.emmet").setup()
--     end,
--     -- config = 'vim.cmd[[EmmetInstall]]'
--     cmd = {'EmmetInstall'}
--   },

--   {
--     'mbbill/undotree',
--     cmd = {'UndotreeToggle'}
--   },

--   {
--     'chemzqm/wxapp.vim',
--     ft = {"wxss", "wxml"}
--   },


--   {
--     'zbirenbaum/copilot.lua',
--     cmd = "Copilot",
--     lazy = false,
--     config = function()
--       require("copilot").setup(require("custom.plugins.installs.copilot"))
--     end
--   },

--   {
--     "zbirenbaum/copilot-cmp",
--     lazy = false,
--     dependencies = {"zbirenbaum/copilot.lua" },
--     config = function ()
--       require("copilot_cmp").setup()
--     end
--   },

--   {
--     "jackMort/ChatGPT.nvim",
--     lazy = false,
--     config = function ()
--       require("chatgpt").setup()
--     end,
--     dependencies = {
--       "MunifTanjim/nui.nvim",
--       "nvim-lua/plenary.nvim",
--       "nvim-telescope/telescope.nvim"
--     }
--   },


}

