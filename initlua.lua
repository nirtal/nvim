require("plugins")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


require("catppuccin").setup({
	transparent_background = true
})
vim.cmd.colorscheme "catppuccin"

vim.api.nvim_del_keymap('n', 'Y')
vim.keymap.set('n', '<c-n>', "<cmd>NvimTreeToggle<CR>", { remap = true })
vim.keymap.set('n', '<c-b>', "<cmd>NvimTreeFindFileToggle<CR>", { remap = true })
