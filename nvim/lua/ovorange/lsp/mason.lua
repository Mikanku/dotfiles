local status_ok, mason = pcall(require, "mason")
if not status_ok then
  vim.notify("mason not found")
  return
end
mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

local status_ok2, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok2 then
  vim.notify("mason-lspconfig not found")
  return
end
mason_lspconfig.setup({
  ensure_installed = { "sumneko_lua", "tsserver", "cssls", "clangd" },
  automatic_installation = true,
})

mason_lspconfig.setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end,
  ["sumneko_lua"] = function ()
    require('lspconfig').sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    }
  end,
}
