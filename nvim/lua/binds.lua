local k = vim.keymap

-- Reload config
k.set('n', '<C-r>', ':luafile %<CR>')

-- Don't copy with x
k.set('n', 'x', '"_x"')

-- Delete a word
k.set('n', 'dw', 'vb"_d')

-- Select all
k.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
k.set('n', 'tu', ':split<Return><C-w>w', { silent = true })  -- Horizontal split
k.set('n', 'tp', ':vsplit<Return><C-w>w', { silent = true }) -- Vertical split

k.set('n', 'tn', '<C-w>w') -- Switch to next tab
k.set('', 'tq', '<C-w>c')  -- Close tab

-- Telescope
k.set('n', 'fb', ':Telescope file_browser<Return>',
    { noremap = true, silent = true })
k.set('n', 'ff', ':Telescope find_files<Return>',
    { noremap = true, silent = true })

-- Coc
k.set('i', '<C-e>', 'coc#pum#visible() ? coc#pum#confirm() : "<C-e>"',
    { expr = true, noremap = true })
k.set('n', 'cf', '<Plug>(coc-codeaction)', { noremap = false })
