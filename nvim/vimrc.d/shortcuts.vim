" about vim shortcuts settings

" 1) Program Languages Complete
" require install language runtime
nnoremap <F1> :echo "[INFO] Not found your language runtime!!"<CR>
autocmd FileType go   nnoremap <F1> :!go run %<CR>
autocmd FileType java nnoremap <F1> :!java %<CR>

" 2) Program Languages Complete with Docker Container
" require install docker engine
nnoremap <F2> :echo "[INFO] Not found your language with docker images!!"<CR>
autocmd FileType java nnoremap <F2> :!docker run --rm -v \%cd\%:/usr/src/myapp -w /usr/src/myapp registry.access.redhat.com/ubi8/openjdk-11-runtime:1.11-2.1648459559 java %<CR>

" 3) Quick for docker test build image 
nmap <F3> :!docker build . -t frank:latest <CR>
nmap <F4> :!docker rmi frank:latest <CR>
