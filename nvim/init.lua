local start_time = vim.fn.reltime()

require("pack")
require("lsp")
require("binds")

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 spaces indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- no line wrap
vim.opt.wrap = false

-- save undo to files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vimundo"
vim.opt.undofile = true

-- disable highlight but keep increment search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scroll offset
vim.opt.scrolloff = 8

vim.opt.termguicolors = true
vim.cmd("colorscheme oxocarbon")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

function plugin_count()
    local count = 0
    for _ in pairs(vim.fn.getcompletion("", "packadd")) do
        count = count + 1
    end
    return count
end

local elapsed = string.format(
    "%.3f",
    vim.fn.reltimefloat(vim.fn.reltime(start_time, vim.fn.reltime()))
)

print("Loaded " .. plugin_count() .. " plugins in " .. elapsed .. "s")