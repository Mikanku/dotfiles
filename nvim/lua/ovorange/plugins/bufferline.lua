local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  vim.notify("lualine not found")
  return
end
bufferline.setup()
