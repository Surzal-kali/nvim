-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- try to open Neo-tree (use whichever command your plugin provides)
    pcall(vim.cmd, "e .")
    -- give the layout a moment, then open a bottom terminal split
    vim.defer_fn(function()
      vim.cmd("botright 15split | terminal")
      vim.cmd("startinsert")
      -- return focus to the file window above the terminal
      vim.cmd("wincmd k")
    end, 50)
  end,
})
