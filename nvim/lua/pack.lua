vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use "nvim-lua/plenary.nvim"

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use {
        "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }
    }

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},             -- Required
            {"williamboman/mason.nvim"},           -- Optional
            {"williamboman/mason-lspconfig.nvim"}, -- Optional

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},         -- Required
            {"hrsh7th/cmp-nvim-lsp"},     -- Required
            {"hrsh7th/cmp-buffer"},       -- Optional
            {"hrsh7th/cmp-path"},         -- Optional
            {"saadparwaiz1/cmp_luasnip"}, -- Optional
            {"hrsh7th/cmp-nvim-lua"},     -- Optional

            -- Snippets
            {"L3MON4D3/LuaSnip"},             -- Required
            {"rafamadriz/friendly-snippets"}, -- Optional
        }
    }

    use "ThePrimeagen/harpoon"

    use "nyoom-engineering/oxocarbon.nvim"

    use "github/copilot.vim"
end)

require"nvim-treesitter.configs".setup {
    ensure_installed = {
        "help",
        "vim", "lua",
        "c", "rust", "javascript", "typescript", "java",
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,

        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        additional_vim_regex_highlighting = false,
    },
}
