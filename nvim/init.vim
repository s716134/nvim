" load vim config 
for CONFIG in split(glob('$HOME/AppData/Local/nvim/vimrc.d/*.vim'), '\n')
	exe 'source' CONFIG
endfor
