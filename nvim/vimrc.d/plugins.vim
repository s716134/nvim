" about vim plugin settings
call plug#begin()
Plug 'ekalinin/dockerfile.vim'                              " dockerfile syntax.
Plug 'Yggdroot/indentLine'                                  " displaying thin vertical lines.
Plug 'dense-analysis/ale'                                   " syntax checking and semantic errors.
Plug 'godlygeek/tabular'                                    " using Tabularize aligning text.
Plug 'github/copilot.vim'                                   " your ai pair programmer(need sign up).
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }     " file system explorer.
Plug 'vim-airline/vim-airline'                              " status/tabline for vim.
Plug 'vim-airline/vim-airline-themes'                       " airline themes.
Plug 'akinsho/bufferline.nvim'                              " buffer line.
Plug 'kyazdani42/nvim-web-devicons'                         " web devicons.
Plug 'ryanoasis/vim-devicons'                               " web devicons.
Plug 'projekt0n/circles.nvim'                               " uniform icons for neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " use release branch (recommend)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " interface for tree-sitter and some basic functionality 
Plug 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }        " go plugin
Plug 'projekt0n/github-nvim-theme'                          " github theme for vim
call plug#end()

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='ouo'

let g:github_dark_sidebar = 0
let g:github_comment_style = "italic"
let g:github_keyword_style = "italic"
let g:github_function_style = "italic"
let g:github_variable_style = "italic"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

nmap <F12> :NERDTreeToggle<CR>             

" need have openjdk
"nmap <F10> :!java %<CR>

" need  have docker & openjdk image
"nmap <F9> :!docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp registry.access.redhat.com/ubi8/openjdk-11 java %<CR>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

colorscheme github_dark
