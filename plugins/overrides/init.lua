return {
    -- Override plugin definition options
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.overrides.lspconfig"
        end,
    }
}