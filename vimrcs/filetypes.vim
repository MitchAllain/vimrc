""""""""""""""""""""""""""""""
" => Source Code Files
""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
au FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
" au FileType python map <buffer> <leader>1 /class 
" au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 

""""""""""""""""""""""""""""""
" => C++ section
""""""""""""""""""""""""""""""
au FileType cpp setlocal shiftwidth=2 softtabstop=2 expandtab
au FileType cpp let b:dispatch = 'make -C build'
" au FileType cpp nnoremap <leader>c :Dispatch! make -C build<cr>

""""""""""""""""""""""""""""""
" => CMake section
""""""""""""""""""""""""""""""
au filetype cmake let b:dispatch = 'mkdir build; cd build; cmake ..'

""""""""""""""""""""""""""""""
" => Rust section
""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.rs set filetype=rust

""""""""""""""""""""""""""""""
" => XML section
""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.launch set filetype=xml

""""""""""""""""""""""""""""""
" => IEC 61131-3 ST section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.st,*.ST set filetype=stplc

""""""""""""""""""""""""""""""
" => YAML section
""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.yaml,*.yml,*.rosinstall set filetype=yaml



""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript,typescript imap <C-t> console.log();<esc>hi
au FileType javascript,typescript imap <C-a> alert();<esc>hi

au FileType javascript,typescript inoremap <buffer> $r return 
au FileType javascript,typescript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
au FileType sh setlocal shiftwidth=4 softtabstop=4 expandtab


""""""""""""""""""""""""""""""
" => Twig section
""""""""""""""""""""""""""""""
autocmd BufRead *.twig set syntax=html filetype=html


""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1
au Filetype markdown setlocal wrap


""""""""""""""""""""""""""""""
" => Vim
""""""""""""""""""""""""""""""
" automatically source vimrc when changes are made
" see also myconfig for remaps to edit and source vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

