"set Python indenting
set tabstop=4
set shiftwidth=4
set expandtab

" set default tex_flavor
let g:tex_flavor = "context"

" turn on line numbers by default
set number

" Activate Pathogen plugin -- crucial that these commands called before
" enabling filetype detection, so good to be at top of vimrc, right
" below set nocompatible

execute pathogen#infect()

" No more manually running :helptags doc!
execute 'Helptags'

autocmd FileType python set omnifunc=pycomplete#CompleteTags noci

if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

" default colorscheme
set background=dark
"colors hybrid


" personal snippet file location
let g:xptemplate_snippet_folders=['$HOME/.nvim/bundle/xptemplate/personal_snippets']

" trigger snippet
let g:xptemplate_key = '<C-l>'

" open pop-up menu
let g:xptemplate_key_pum_only = '<Leader><Tab>'

" clear current placeholder and jump to the next
imap <C-d> <Tab>
let g:xptemplate_nav_cancel = '<C-d>'

"move to next placeholder in snippet
let g:template_nav_next = '<Tab>'

" go to end of current placeholder and enter insert mode
let g:xptemplate_to_right = '<C-/>'

" move cursor back to last placeholder
let g:xptemplate_goback = '<C-g>'

" use tab/s-tab to navigate through the pop-up menu
let g:xptemplate_pum_tab_nav = 1

filetype plugin  on
filetype indent on
syntax on

set laststatus=2
set ttimeoutlen=50

let g:airline_powerline_fonts = 1

" set colors to 256
  " For some reason, gnome-terminal says xterm-color even though it supports
" xterm-256color.
let $TERM = "xterm-256color"
if $COLORTERM == 'gnome-terminal'
      set t_Co=256
  endif

" automatic brace completion for java-esque langs
autocmd FileType java,javascript,node,efo inoremap { {<CR>}<Esc>ko
autocmd FileType efo inoremap ( ()<Esc>i

"remap leader
let mapleader = "\<Space>"
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" force statusline to not show in favor of airline
set noshowmode
set foldmethod=syntax
set clipboard=unnamed
