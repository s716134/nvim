" about vim shortcuts settings

" 1) Program Languages Complete
" require install language runtime
nnoremap <F1> :echo "[INFO] Not found your language runtime!!"<CR>
autocmd FileType go   nnoremap <F1> :!go run %<CR>
autocmd FileType java nnoremap <F1> :!java %<CR>

" 2) Program Languages Complete with Docker Container
" require install docker engine
nmap <F2> :!docker run --rm -v \%cd\%:/usr/src/myapp -w /usr/src/myapp registry.access.redhat.com/ubi8/openjdk-11-runtime:1.11-2.1648459559 java %<CR>
nmap <F3> :!docker build . -t frank:latest <CR>
nmap <F4> :!docker rmi frank:latest <CR>
