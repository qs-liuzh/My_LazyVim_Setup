-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("smear_cursor").enabled = true

--add language server here, no other configuration needed, as long as you have installed the language servers on your computer.
--the reason is that LazyVim have set some lsp, cmp and other plugins by default.
vim.lsp.enable("pyright")
vim.lsp.enable("gopls")

--select colorscheme
vim.cmd.colorscheme("onedark")

--keyboard map configuration here
vim.keymap.set("n", "<F5>", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>t", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

if vim.g.neovide then
  vim.g.neovide_no_frame = true
end
