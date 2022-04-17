" about vim shortcuts settings

" 1) Program Languages Complete
" require install language runtime
nnoremap <F12> :echo "[INFO] Not found your language runtime!!"<CR>
autocmd FileType go   nnoremap <F12> :!go run %<CR>
autocmd FileType java nnoremap <F12> :!java %<CR>

" 2) Program Languages Complete with Docker Container
" require install docker engine
nmap <F9> :!docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp registry.access.redhat.com/ubi8/openjdk-11 java %<CR>
