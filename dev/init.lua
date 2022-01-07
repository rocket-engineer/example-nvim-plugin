package.loaded['myplugin'] = nil
package.loaded['myplugin.awesome-module'] = nil
package.loaded['dev'] = nil

vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>luafile dev/init.lua<cr>', {})

vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>lua require("myplugin").greet()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>lua print("NvimTree:",require("myplugin").has_nvimtree())<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>lua print("Vista:",require("myplugin").has_vista())<cr>', {})

