require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  window = { position = "left", width = 35 },
  filesystem = {
    follow_current_file = true,
    hijack_netrw_behavior = "open_default",
    use_libuv_file_watcher = true,
  },
})
