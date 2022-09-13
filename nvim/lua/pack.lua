local status, packer = pcall(require, 'packer')
if (not status) then
    print 'Packer is not installed :('
    return
end

vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'frenzyexists/aquarium-vim'

    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    use 'github/copilot.vim'

    use 'norcalli/nvim-colorizer.lua'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({ with_sync = true })
        end,
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

vim.cmd [[ colorscheme aquarium ]]

vim.opt.termguicolors = true
require 'colorizer'.setup()

require 'telescope'.setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules/*",
            "dist--newstyle",
        },
        prompt_prefix = "  ",
        selection_caret = "  ",
        entry_prefix = "  ",
        layout_strategy = "flex",
        layout_config = {
            horizontal = {
            preview_width = 0.6,
            },
        },
        border = {},
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    }
}

