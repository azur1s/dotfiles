--[[ Keybindings ]]--

local keymap = vim.api.nvim_set_keymap

-- Move between windows with Control + Arrow keys
keymap('n', '<S-Left>' , '<C-w>h', {})
keymap('n', '<S-Right>', '<C-w>l', {})
keymap('n', '<S-Up>'   , '<C-w>k', {})
keymap('n', '<S-Down>' , '<C-w>j', {})

keymap('n', '<C-l>', ':%s/', {})

-- Remove entire line
keymap('n', '<C-x>', '"_D<CR>', {})

-- Remove search term with Comma key
keymap('n', ',', ':let @/=""<CR>', { silent = true })

-- Open config file
keymap('n', '<C-p>', ':e $MYVIMRC<CR>', {})

-- Hot reload config
keymap('n', '<C-n>', ':source $MYVIMRC<CR>', {}) 

-- File navigations
keymap('n', 'f', ':GFiles --cached --others --exclude-standard<CR>', {})
keymap('n', '<C-f>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', {})

