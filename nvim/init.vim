" --- Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Plug 'jiangmiao/auto-pairs'

" Cosmetics plugins
Plug 'kyazdani42/nvim-web-devicons'
Plug 'andweeb/presence.nvim'
Plug 'github/copilot.vim'
Plug 'wakatime/vim-wakatime'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'glepnir/dashboard-nvim'

Plug 'azur1s/bobbylisp.vim'

call plug#end()
            
let mapleader = "\<Space>"            

" --- Vim Settings
set number
set completeopt=menu,menuone,noselect
set shortmess+=c
set mouse=a
set cursorline

" Telescope
nnoremap f <cmd>Telescope find_files<CR>

" Copilot toggle
nnoremap 3 :Copilot enable<CR>
nnoremap 4 :Copilot disable<CR>

set tabstop=4
set shiftwidth=4
set expandtab

" Move lines up and down
nnoremap <C-Up> :m -2<CR>
nnoremap <C-Down> :m +2<CR>

set nowrap
syntax enable
filetype plugin indent on

" Colorschemes
let g:tokyonight_style = "night"
colorscheme tokyonight

" Dashboard
let g:dashboard_default_executive = "telescope"
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

let g:dashboard_preview_command = "cat"
let g:dashboard_preview_file = "~/.config/nvim/icon.cat"
let g:dashboard_preview_file_height = 5
let g:dashboard_preview_file_width = 30

" --- Lua stuff

lua << END
END

