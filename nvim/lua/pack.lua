require("packer").startup(function()
    use "neoclide/coc.nvim"
    -- coc-rust-analyzer

    -- Use packer
    use "wbthomason/packer.nvim"

    -- Nvim tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require"nvim-tree".setup {} end
    }

    use "junegunn/fzf.vim"

    -- Bufferline (or tabs)
    use {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- Statusline
    use {
        "nvim-lualine/lualine.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- Discord Rich Presence
    use "andweeb/presence.nvim"

    -- Color scheme
    use "folke/tokyonight.nvim"
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
