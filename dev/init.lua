package.loaded['myplugin'] = nil
package.loaded['myplugin.awesome-module'] = nil
package.loaded['dev'] = nil

vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>luafile dev/init.lua<cr>', {})

local myplugin = require("myplugin")
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>lua myplugin.greet()<cr>', {})

