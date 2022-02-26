--[[ Packages ]]--

require('packer').startup(function()
    -- Use packer
    use 'wbthomason/packer.nvim'

    -- Nvim tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',   
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- Coc (rust-analyzer)
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- Tokyonight color scheme
    use 'folke/tokyonight.nvim' 
end)

local colors = {
    -- bg = '#1a1b26',
    bg = 'NONE',
    fg = '#a9b1d6',
    green = '#9ece6a',
    blue = '#7aa2f7',
    yellow = '#e0af68',
    magenta = '#ad8ee6',
    red = '#f7768e',
}

-- Lualine config
local config = {
    options = {
        -- component_separators = { left = '▓▒░', right = '░▒▓' },
        -- section_separators   = { left = '▓▒░', right = '░▒▓' },
        component_separators = '',
        section_separators = '',
        theme = {
            normal = {
                a = { fg = colors.blue, bg = colors.bg },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            insert = {
                a = { fg = colors.green, bg = colors.bg },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            command = {
                a = { fg = colors.yellow, bg = colors.bg },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            visual = {
                a = { fg = colors.magenta, bg = colors.bg },    
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            replace = {
                a = { fg = colors.red, bg = colors.bg },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            inactive = {
                a = { fg = colors.fg, bg = colors.bg },
                b = { fg = colors.fg, bg = colors.bg },
            },
        },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = { },
        lualine_x = { },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    },
    inactive_sections = {
        lualine_a = { },
        lualine_b = { },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = { },
        lualine_z = { },
    },
}
require('lualine').setup(config)

-- Tokyonight config
vim.g.tokyonight_style = "night"
vim.cmd [[colorscheme tokyonight]]

--[[ Keybindings ]]--

local keymap = vim.api.nvim_set_keymap

-- Move between windows with Control + Arrow keys
keymap('n', '<C-Left>' , '<C-w>h', {})
keymap('n', '<C-Right>', '<C-w>l', {})
keymap('n', '<C-Up>'   , '<C-w>k', {})
keymap('n', '<C-Down>' , '<C-w>j', {})

-- Open config file
keymap('n', '<C-p>', ':e $MYVIMRC<CR>', {})

-- Hot reload config
keymap('n', '<C-n>', ':source $MYVIMRC<CR>', {}) 

-- Nvim tree keybinds
keymap('n', 'f', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', {})

--[[ Misc ]]--

-- Line number
vim.wo.number = true

-- Tab with 4 spaces
vim.opt.expandtab   = true
vim.opt.shiftwidth  = 4
vim.opt.softtabstop = 4
