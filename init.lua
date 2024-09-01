-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.neovide_fullscreen = true
vim.g.neovide_confirm_quit = true
vim.keymap.set("n", "<D-n>", ":silent exec '!neovide'<cr>")
if vim.g.neovide then
  vim.print(vim.g.neovide_verion)
end
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejson",
  callback = function()
    vim.bo.filetype = "json"
  end,
})
