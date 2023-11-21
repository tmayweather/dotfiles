:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/ms-jpq/chadtree'
Plug 'https://github.com/hrsh7th/nvim-cmp'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/kylechui/nvim-surround'
call plug#end()
colorscheme dracula

" Set the background color with 80% opacity
hi Normal guibg=#282a36 ctermbg=NONE
hi NonText guibg=#282a36 ctermbg=NONE
hi VertSplit guibg=#282a36 ctermbg=NONE
hi StatusLine guibg=#282a36 ctermbg=NONE
hi StatusLineNC guibg=#282a36 ctermbg=NONE
hi StatusLineTerm guibg=#282a36 ctermbg=NONE
hi StatusLineTermNC guibg=#282a36 ctermbg=NONE
hi LineNr guibg=#282a36 ctermbg=NONE
hi SignColumn guibg=#282a36 ctermbg=NONE
hi NormalNC guibg=#282a36 ctermbg=NONE

" Disable background highlight for search results
set nohlsearch

