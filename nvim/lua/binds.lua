local builtin = require('telescope.builtin')

vim.g.mapleader = " ";

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "fnw", vim.cmd.Ex)
vim.keymap.set("n", "fne", builtin.find_files, {})
vim.keymap.set("n", "fnu", builtin.git_files, {})
vim.keymap.set("n", "fnp", function()
    builtin.grep_string({ search = vim.fn.input("Grep: ") })
end)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "thf", mark.add_file)
vim.keymap.set("n", "thu", mark.rm_file)
vim.keymap.set("n", "thp", mark.clear_all)
vim.keymap.set("n", "(", ui.toggle_quick_menu)

vim.keymap.set("n", "thl", function() ui.nav_file(1) end)
vim.keymap.set("n", "thn", function() ui.nav_next() end)
vim.keymap.set("n", "the", function() ui.nav_prev(4) end)
