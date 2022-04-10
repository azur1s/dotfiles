--[[ Keybindings ]]--

local keymap = vim.api.nvim_set_keymap

-- Move between windows with Control + Arrow keys
keymap('n', '<S-Left>' , '<C-w>h', {})
keymap('n', '<S-Right>', '<C-w>l', {})
keymap('n', '<S-Up>'   , '<C-w>k', {})
keymap('n', '<S-Down>' , '<C-w>j', {})

-- Remove search term with Comma key
keymap('n', ',', ':let @/=""<CR>', {})

-- Open config file
keymap('n', '<C-p>', ':e $MYVIMRC<CR>', {})

-- Hot reload config
keymap('n', '<C-n>', ':source $MYVIMRC<CR>', {}) 

-- Nvim tree keybinds
keymap('n', 'f', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', {})
