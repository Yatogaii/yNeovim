local status_ok, lsp-format = pcall(require, "lsp-format")
if not status_ok then
  vim.notify("lsp-format not found!")
  return
end

lsp-format.setup({
    c = {tab_width = 4, indent_size = 4},
    c++= {tab_width = 4, indent_size = 4},
})
