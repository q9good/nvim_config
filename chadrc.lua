---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'tomorrow_night',

  transparency = true
}
 M.plugins = 'custom.plugins'
 M.mappings = require "custom.core.mappings"
 return M
