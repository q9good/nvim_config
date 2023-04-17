local M = {}

-- override core mapping
-- M.general = {
--    i = {

--    },
--    n = {
--       ["<leader>w"] = { "<cmd> w <CR>", "﬚  save file" },
--    }
-- }

-- M.user = {
--     n = {
--         ["<leader>cc"] = { "gg0vG$d", "delete the buffer" },
--         ["<leader>s"] = { ":Telescope grep_string<CR>", "grep string" },
--         ["<leader>cd"] = { ":cd %:p:h<CR>:pwd<CR>", "change dir to the current file location" },
--         ["<leader>q"] = { ":q<CR>", "quit nvim" },
--         -- telescope
--         ["<leader>te"] = { ":Telescope <CR>", "spawn telescope" },
--         ["<leader>tl"] = { ":Telescope live_grep<CR>", "spawn telescope" },

--         -- truezen
--         ["<leader>ta"] = { ":TZAtaraxis <CR>", "TZAtaraxis" },
--         ["<leader>tm"] = { ":TZMinimalist <CR>", "TZMinimalist" },
--         ["<leader>tf"] = { ":TZFocus <CR>", "TZFocus" },
--     },

--     v = {
--         ["$<"] = { "<esc>`>a><esc>`<i<<esc>", "wrap <>" },
--         ["$("] = { "<esc>`>a)<esc>`<i(<esc>", "wrap ())" },
--         ["$["] = { "<esc>`>a]<esc>`<i[<esc>", "wrap []]" },
--         ["${"] = { "<esc>`>a}<esc>`<i{<esc>", "wrap {}" },
--         ['$"'] = { '<esc>`>a"<esc>`<i"<esc>', "wrap \"\"" },
--         ["$'"] = { "<esc>`>a'<esc>`<i'<esc>", "wrap ''" },
--         ["$`"] = { "<esc>`>a`<esc>`<i`<esc>", "wrap ``" },
--         ["$$"] = { "$", "select to the end" },
--     },

--     i = {
--         ["jc"] = { "/*  */<Left><Left><Left>", "c style comment" },
--         ["jd"] = { "# ", "script style comment" },
--     }
-- }
-- M.symbols_outline = {
--    n = {
--       -- ["<leader>so"] = {"<cmd> SymbolsOutline <CR>", "ﴴ   symbols outline"}
--       ["<Space>o"] = { "<cmd> SymbolsOutline <CR>", "ﴴ   symbols outline" },
--    },
-- }

-- M.nvimtree = {
--    n = {
--       ["<Space>e"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
--    },
-- }
return M