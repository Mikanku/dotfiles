local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("nvim-tree not found")
  return
end
nvim_tree.setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})
