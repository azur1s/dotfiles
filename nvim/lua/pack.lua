local status, packer = pcall(require, 'packer')
if (not status) then
    print 'Packer is not installed :('
    return
end

vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'rainglow/vim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Multiline editing (VSCode like)
    use {
        'mg979/vim-visual-multi',
        branch = 'master'
    }

    -- Conquer of Completion
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Parinfer (for lisps)
    use 'gpanders/nvim-parinfer'

    -- Haskell
    use 'neovimhaskell/haskell-vim'

    -- Github copilot
    use 'github/copilot.vim'

    -- Telescope file finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Useful movement related plugins
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'justinmk/vim-sneak'

    -- Discord RPC
    use 'andweeb/presence.nvim'

end)

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
require 'telescope'.load_extension 'file_browser'

local t = { a = { bg = '#00000000' }, c = { bg = '#00000000' } }
local function time() return os.date '%H:%M' end
require 'lualine'.setup {
    options = {
        theme = {
            normal   = t,
            insert   = t,
            visual   = t,
            replace  = t,
            command  = t,
            inactive = t,
        },
        component_separators = ' ',
    },
    sections = {
        lualine_a = { 'mode', 'filename', 'location', 'progress', 'filetype' },
        lualine_b = { },
        lualine_c = { },
        lualine_x = { },
        lualine_y = { },
        lualine_z = { time },
    },
    inactive_sections = {
        lualine_a = { 'filename', 'location', 'progress', 'filetype' },
        lualine_b = { },
        lualine_c = { },
        lualine_x = { },
        lualine_y = { },
        lualine_z = { },
    },
    tabline = {},
    extensions = { 'fugitive' }
}

