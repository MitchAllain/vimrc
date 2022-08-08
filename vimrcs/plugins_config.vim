""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>

" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeTabsToggle<CR>

" not a big fan of stepping on this built-in, but I do need this mapping
" nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-f> :NERDTreeTabsFind<CR>

" disable these default keymaps, since they
" conflict with my vim/tmux navigation scheme
let g:NERDTreeMapJumpNextSibling = ''
let g:NERDTreeMapJumpPrevSibling = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'],
\   'python': ['yapf', 'trim_whitespace']
\}

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>g :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => markdownpreview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
" let g:mkdp_auto_start = 1

" set to 1, echo preview page url in command line when open preview page
let g:mkdp_echo_preview_url = 1

" specify browser to open preview page
let g:mkdp_browser = 'google-chrome'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim surround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType markdown let b:surround_105 = "*\r*" " i = 105
autocmd FileType markdown let b:surround_98 = "**\r**" " b = 98
autocmd FileType markdown let b:surround_99 = "```\n\r\n```" " b = 98

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-showmarks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>m :SignatureToggle<cr>

" coc.nvim works best on vim >= 8.1.1719 and neovim >= 0.4.0, consider upgrade your vim.
" You can add this to your vimrc to avoid this message:
let g:coc_disable_startup_warning = 1
