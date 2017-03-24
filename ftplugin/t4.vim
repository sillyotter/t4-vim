" Vim filetype plugin file
" Language:	T4 Template Files
" Maintainer:	Guy Oliver <guy.oliver@gmail.com>
"
" $LastChangedDate $
" $Rev $

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif

" Don't load another plug-in for this buffer
let b:did_ftplugin = 1

setlocal tw=0

" Change the browse dialog on Win32 to show mainly PowerShell-related files
if has("gui_win32")
	let b:browsefilter = "T4 Template Files (*.tt)\t*.tt\n" .
      \ "T4 Template include Files (*.ttinclude)\t*.ttinclude\n" .
		\ "All Files (*.*)\t*.*\n"
endif

" Undo the stuff we changed
let b:undo_ftplugin = "setlocal tw<" .
	\ " | unlet! b:browsefilter"
