require('packer').startup(function()
    -- Use packer
    use 'wbthomason/packer.nvim'

    -- Nvim tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }

    -- Coc (rust-analyzer)
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Hazure language
    use "azur1s/hazure.vim"

    -- Bufferline (or tabs)
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Discord Rich Presence
    use 'andweeb/presence.nvim'

    -- Color scheme
    use 'folke/tokyonight.nvim'
end)

-- Colorscheme config
vim.g.tokyonight_style = "night"
vim.cmd [[colorscheme tokyonight]]

-- Buffer line
vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        close_command = "bdelete! %d",
        -- left_mouse_command = "bdelete! %d",
    }
}
