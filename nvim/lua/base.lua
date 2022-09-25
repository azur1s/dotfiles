-- Disabling some visual
vim.opt.shortmess:append("I") -- Disable intro
vim.opt.showmode = false      -- Disable mode text ("-- INSERT --")

-- Change filler character
vim.opt.fillchars = { eob = "." }

-- Use mouse
vim.opt.mouse = "a"

-- Colors
vim.opt.signcolumn = "no"
vim.opt.termguicolors = true
vim.cmd [[ colorscheme frantic-contrast ]]
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi CocUnusedHighlight cterm=underline gui=underline guibg=NONE ]]
vim.cmd [[ hi CocInlayHint guibg=NONE guifg=Grey ]]

-- Persistent undo
if vim.fn.isdirectory(os.getenv("HOME").."/.vim-undo-dir") == 0 then
    vim.fn.mkdir(os.getenv("HOME").."/.vim-undo-dir", "", 0700)
end
vim.opt.undodir = os.getenv("HOME").."/.vim-undo-dir"
vim.opt.undofile = true

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Indents
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false

-- Whitespace highlighting
vim.opt.list = true
vim.opt.listchars = {
    tab = '» ',
    trail = '·',
    extends = '>',
    precedes = '<'
}

-- Miscellanenous
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }

