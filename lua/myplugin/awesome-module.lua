local M = {}

M.greet = function()

  local tabpage = vim.api.nvim_get_current_tabpage()
  
  print("Tab page",vim.api.nvim_tabpage_get_number(tabpage))
  local windows = vim.api.nvim_tabpage_list_wins(tabpage)
  for w=1, #windows, 1 do
    local window = windows[w]
    local buffer = vim.api.nvim_win_get_buf(window)
    -- print('wini ',vim.api.nvim_win_get_number(window))
    -- print('wintb',vim.api.nvim_win_get_tabpage(tabpagewin))
    -- print('width',vim.api.nvim_win_get_width(window))
    -- if vim.api.nvim_win_get_number(window) == 2 then
    --   vim.api.nvim_win_set_width(window, 110)
    -- end
    local bufname = vim.api.nvim_buf_get_name(buffer)
    print('    ',bufname)
    -- print('type',type(windows))
    local find_nvimtree = string.find(bufname, "/NvimTree")
    local find_vista = string.find(bufname, "/__vista__")
    print("NvimTree",not (find_nvimtree == nil))
    print("Vista   ",not (find_vista == nil))
    -- print(string.find(bufname, "/__vista__"))
  end
end

M.has_nvimtree = function()
  local tabpage = vim.api.nvim_get_current_tabpage()
  local windows = vim.api.nvim_tabpage_list_wins(tabpage)

  local has_nvimtree = false
  for w=1, #windows, 1 do
    local window = windows[w]
    local buffer = vim.api.nvim_win_get_buf(window)
    local bufname = vim.api.nvim_buf_get_name(buffer)

    local find_nvimtree = string.find(bufname, "/NvimTree")
    local check = not (find_nvimtree == nil)
    if check then
      has_nvimtree = true
      break
    end
  end

  return has_nvimtree
end

M.has_vista = function()
  local tabpage = vim.api.nvim_get_current_tabpage()
  local windows = vim.api.nvim_tabpage_list_wins(tabpage)

  local has_vista = false
  for w=1, #windows, 1 do
    local window = windows[w]
    local buffer = vim.api.nvim_win_get_buf(window)
    local bufname = vim.api.nvim_buf_get_name(buffer)

    local find_vista = string.find(bufname, "/__vista__")
    local check = not (find_vista == nil)
    if check then
      has_vista = true
      break
    end
  end

  return has_vista
end

return M
