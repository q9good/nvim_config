local opt = vim.opt

local g = vim.g

opt.foldmethod = "indent"
opt.foldlevel = 50

opt.scrolloff = 10
opt.cursorline = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.relativenumber = true
opt.number = true
opt.mouse = a
local undodir = vim.fn.expand('~/.config/nvim/undodir')
-- if the undodir don't exist, we'll create it
if not vim.fn.isdirectory(undodir)
then
    vim.fn.mkdir(undodir)
end
opt.undodir= undodir
opt.undofile = true
opt.backup = false
