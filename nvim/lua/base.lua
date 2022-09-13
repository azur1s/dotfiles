vim.opt.relativenumber = true
vim.opt.backspace = 'start,eol,indent'

vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = {
    tab = '» ',
    trail = '·',
    extends = '>',
    precedes = '<'
}

vim.opt.path:append { '**' }

