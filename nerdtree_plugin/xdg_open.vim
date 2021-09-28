" open file with default system handler
" from https://github.com/preservim/nerdtree/issues/652#issuecomment-318787040
call NERDTreeAddKeyMap({
      \ 'key': 'gx',
      \ 'callback': 'NERDTreeOpenFileHandler',
      \ 'quickhelpText': 'open file with xdg-open',
      \ 'scope': 'FileNode' })

function! NERDTreeOpenFileHandler(filenode)
  call g:netrw#BrowseX(a:filenode.path.str(), 0)
endfunction
